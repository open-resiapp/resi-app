# Landing page changelog — open-resi.app

## 2026-05-12

### Added
- New section: Modulárna architektúra (`#moduly`) — plugin/module system, per-community grants, custom SDK
- New section: GDPR a súkromie (`#gdpr`) — consent management, versioned consents, audit log
- New section: Výbor a správa (`#vybor`) — orthogonal governance layer (3 governance models, 4 board roles, terms, CRUD)
- New section: Onboarding vlastníkov (`#onboarding`) — QR-based bulk registration
- New section: Notifikácie (`#notifikacie`) — Web Push (VAPID), email fallback
- New section: API a integrácie (`#api`) — external connections, pairing, granular API keys, webhooks
- New subsection inside `#law`: Czech §89/2012 Sb. — rules, terminology, quora
- New row in law compliance table: `all_unanimous` quorum
- Tech stack tiles: `next-themes` (dark mode), `Web Push (VAPID)`
- Tech section UX-polish callout (dark mode + i18n SK/CZ/EN + recent-posts dashboard)
- Nav items: `Moduly`, `API`

### Changed
- `aud3` (Czech SVJ) — expanded from one line to full paragraph with §1158–1222 reference
- `audience.desc` — mentions country toggle on building
- `f4` (Nástenka) — rewritten to "Nástenka, diskusie a ankety" with threaded responses and inline polls
- `komunita.notify` — references push notifications
- `doc-install` — promoted `setup.sh` one-liner; manual flow wrapped in collapsible `<details>`
- `hero.desc` — mentions threaded discussions, polls, push notifications, Czech §89/2012

### Unchanged (per brief)
- `hero.title` — proposition stays
- `#cloud` pricing table
- `#roly` — 5 user roles (admin, owner, tenant, vote_counter, caretaker)
- Existing tech stack tiles (only additions)

### Screenshots — outdated, regenerate
- `og:image` (referenced in `<meta property="og:image">`) — should reflect new dashboard with recent posts
- Recommended new screenshots when available: dashboard with recent-posts widget, bulletin post with threaded responses + poll, QR onboarding screen, GDPR consents page in user profile, theme toggle in nav

### Notes
- ~95 new i18n keys added to both SK and EN translation objects
- `setup.sh` URL: `curl -fsSL https://get.open-resi.app | bash` (Cloudflare Redirect Rule → raw.githubusercontent.com/.../setup.sh, 301)
- CZ terms in EN copy: kept italicised originals (`shromáždění`, `výbor`, `předseda`) rather than translating, since terminology is jurisdiction-specific

### Files
- `index.html` — patched in place
- `LANDING-UPDATE.md` — full SK+EN draft used as source of truth for this update
