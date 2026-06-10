# open-resi.app — website

Marketing and SEO site for **[OpenResiApp](https://open-resi.app)**, the open-source
app for managing Slovak SVB, bytové družstvá, and Czech SVJ — electronic voting and
neighbour community, self-hosted free or cloud from €4/month.

Static HTML, deployed on Cloudflare Pages.

## Pages

| URL | Topic |
|-----|-------|
| [/](https://open-resi.app/) | Homepage |
| [/elektronicke-hlasovanie-svb/](https://open-resi.app/elektronicke-hlasovanie-svb/) | Elektronické hlasovanie SVB (zákon 182/1993) |
| [/elektronicke-hlasovanie-bytove-druzstvo/](https://open-resi.app/elektronicke-hlasovanie-bytove-druzstvo/) | Elektronické hlasovanie bytového družstva |
| [/cs/elektronicke-hlasovani-svj/](https://open-resi.app/cs/elektronicke-hlasovani-svj/) | Elektronické hlasování SVJ (Czech) |
| [/zakon-182-1993-hlasovanie/](https://open-resi.app/zakon-182-1993-hlasovanie/) | Zákon 182/1993 Z. z. — hlasovanie |
| [/alternativa-resitech/](https://open-resi.app/alternativa-resitech/) | Alternatíva k Resitech |
| [/komunita-susedia/](https://open-resi.app/komunita-susedia/) | Susedská komunita |
| [/cloud-cennik/](https://open-resi.app/cloud-cennik/) | Cloud cenník |
| [/self-hosted-docker-instalacia/](https://open-resi.app/self-hosted-docker-instalacia/) | Self-hosted Docker inštalácia |
| [/dokumentacia-prve-hlasovanie/](https://open-resi.app/dokumentacia-prve-hlasovanie/) | Dokumentácia — prvé hlasovanie |

## App source

The application itself lives in a separate repo. Try it at **[open-resi.app](https://open-resi.app)**.

## SEO

- `sitemap.xml` — all indexable URLs (keep in sync when adding pages)
- `robots.txt` — crawl policy + sitemap reference
- `_headers` — Cloudflare Pages headers (cache, security, `X-Robots-Tag`)
- `llms.txt` / `llms-full.txt` — LLM context files ([llmstxt.org](https://llmstxt.org))

### IndexNow (Bing / Seznam / Yandex)

Instant crawl requests after a content change. Google ignores IndexNow — for Google
use Search Console → URL Inspection → **Request Indexing**.

```bash
./scripts/indexnow-submit.sh    # submits every sitemap URL
```

Verification key file: `249f75d56ed72176f52d7efb33aa2a78.txt` (served at site root).

### Adding a page — checklist

1. Create `slug/index.html` with `<title>`, meta description, canonical, hreflang, OG, JSON-LD.
2. Add `<url>` entry to `sitemap.xml`.
3. Link the new page from the homepage and 1–2 related pages (avoid orphans).
4. Run `./scripts/indexnow-submit.sh` and request indexing in GSC.
