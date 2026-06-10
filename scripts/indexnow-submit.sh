#!/usr/bin/env bash
# IndexNow bulk submit — pings Bing, Seznam, Yandex (instant crawl request).
# Google ignores IndexNow; use GSC "Request Indexing" for Google.
#
# Usage:  ./scripts/indexnow-submit.sh
# Reads URLs straight from sitemap.xml so the list never drifts.
#
# Seznam.cz matters: it's a major Czech engine and indexes new domains
# faster than Google — important for the /cs/ pages.

set -euo pipefail

HOST="open-resi.app"
KEY="249f75d56ed72176f52d7efb33aa2a78"
KEY_LOCATION="https://${HOST}/${KEY}.txt"
SITEMAP="$(dirname "$0")/../sitemap.xml"
ENDPOINT="https://api.indexnow.org/indexnow"

if [[ ! -f "$SITEMAP" ]]; then
  echo "sitemap.xml not found at $SITEMAP" >&2
  exit 1
fi

# Extract <loc> values from the sitemap.
mapfile -t URLS < <(grep -oE '<loc>[^<]+</loc>' "$SITEMAP" | sed -E 's#</?loc>##g')

if [[ ${#URLS[@]} -eq 0 ]]; then
  echo "No URLs found in sitemap." >&2
  exit 1
fi

echo "Submitting ${#URLS[@]} URL(s) to IndexNow as ${HOST}..."

# Build JSON urlList array.
url_json=$(printf '"%s",' "${URLS[@]}")
url_json="[${url_json%,}]"

payload=$(cat <<JSON
{
  "host": "${HOST}",
  "key": "${KEY}",
  "keyLocation": "${KEY_LOCATION}",
  "urlList": ${url_json}
}
JSON
)

http_code=$(curl -sS -o /tmp/indexnow_resp.txt -w '%{http_code}' \
  -X POST "$ENDPOINT" \
  -H 'Content-Type: application/json; charset=utf-8' \
  -d "$payload")

echo "HTTP ${http_code}"
# 200 = accepted, 202 = accepted (key validation pending). Anything else = problem.
case "$http_code" in
  200|202) echo "OK — URLs queued for crawl by Bing/Seznam/Yandex." ;;
  *) echo "Unexpected response:"; cat /tmp/indexnow_resp.txt; exit 1 ;;
esac
