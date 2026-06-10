# Directory & community submissions — backlink + traffic playbook

Goal: build domain authority so Google stops leaving pages "Discovered – currently
not indexed". Each listing below is a real, do-follow-ish backlink or a traffic source.
Work top to bottom — highest authority / lowest effort first.

Reusable building blocks are at the bottom (`## Copy blocks`); each channel references them.

---

## 1. awesome-selfhosted (GitHub) — highest authority, do it first

Repo: https://github.com/awesome-selfhosted/awesome-selfhosted
Category: **Communication - Custom Communications Systems** is wrong; use **Personal
Dashboards** is wrong too — closest fit is a new line under **Document Management** or
**Communication → Social Networks and Forums** is wrong. Best fit: propose under
**"Office Suites"**? No. Use **"Communication - Social Networks and Forums"** only if a
fit. Realistically: open a PR adding it under **Document Management** or **Personal
Management** and let maintainers reclassify. Entry format the repo requires:

```
- [OpenResiApp](https://open-resi.app) - Management for residential / homeowner associations (SVB, SVJ, bytové družstvo): weighted electronic voting compliant with Slovak Act 182/1993, board announcements, neighbour community, PDF minutes. ([Source Code](https://github.com/open-resiapp/open-resiapp)) `AGPL-3.0` `Docker`
```

Rules to pass CI: alphabetical order within the category, line ends with license +
language tags in backticks, description starts with a capital and ends with a period,
no marketing fluff. Read `CONTRIBUTING.md` in the repo first.

Also submit to: **awesome-selfhosted-data** (the YAML backend, if they've migrated).

## 2. openalternative.co — open-source SaaS alternatives directory

URL: https://openalternative.co/submit
Pitch it as the open-source alternative to **Resitech** / proprietary HOA software.
- Name: OpenResiApp
- Website: https://open-resi.app
- Repository: https://github.com/open-resiapp/open-resiapp
- Description: use `## Copy blocks → Short (≤60 words)`
- Alternative to: Resitech, domus.sk, and other proprietary SVB/správa software
- Topics/tags: `hoa`, `voting`, `property-management`, `self-hosted`, `slovakia`

## 3. AlternativeTo

URL: https://alternativeto.net/manage-app/ (submit new app)
- List it as an alternative to proprietary property-management / HOA tools.
- Licence: Open Source / Free
- Platforms: Self-Hosted, Web, Docker
- Description: `## Copy blocks → Medium (≤120 words)`
- Tags: property-management, voting, hoa, self-hosted, slovakia, czech

## 4. SaaSHub

URL: https://www.saashub.com/submit-service
- Category: Property Management / Collaboration
- Description: `## Copy blocks → Medium`
- Add as alternative to Resitech and similar.

## 5. Slant

URL: https://www.slant.co
- Add OpenResiApp as an option to questions like "best self-hosted HOA / property
  management software" and "best electronic voting tools for associations".

## 6. Other directory backlinks (low effort, do in a batch)

- **LibHunt / Awesome lists mirrors** — auto-pick up awesome-selfhosted, but submit
  directly at https://www.libhunt.com if a manual form exists.
- **Product Hunt** — launch post (use the tagline + Medium copy). Schedule for a
  Tue–Thu. Drives a spike + a do-follow profile link.
- **producthunt alternatives / Uneed / Fazier / Toolfolio / SaaSworthy** — same Medium copy.
- **G2 / Capterra** (property management category) — slower, but high authority and
  buyer-intent traffic in the SK/CZ market.
- **Czech/Slovak**: vyber-z-hostingu / oborové katalógy, **Heureka** is e-commerce only
  (skip). Better: relevant SVB/SVJ blogs and **diskuse** threads (see §8).

## 7. Show HN (Hacker News)

URL: https://news.ycombinator.com/submit
- Title: `Show HN: OpenResiApp – open-source electronic voting for housing associations`
- URL: https://open-resi.app
- First comment: use `## Copy blocks → Show HN comment`. Post Tue–Thu ~15:00 UTC.

## 8. Reddit & forums (traffic + nofollow, still signal)

- **r/selfhosted** — "I built an open-source, self-hostable app for housing-association
  voting (AGPL, Docker)". Lead with the self-hosting story, not the sales pitch.
- **r/opensource**, **r/golang**? no — it's Next.js, so **r/nextjs** for a build post.
- **SK/CZ**: Facebook groups "Správcovia bytov", "SVB / SVJ", "Predsedovia spoločenstiev
  vlastníkov bytov"; **modrastrecha.sk**, **bezrealitky** diskuse, local správa forums.
  Answer real "ako spustiť elektronické hlasovanie" questions and link the relevant
  landing page (e.g. `/zakon-182-1993-hlasovanie/`).

---

## Copy blocks

### Tagline (≤10 words)
> Open-source electronic voting and community for housing associations.

### Short (≤60 words)
> OpenResiApp is open-source software for housing associations — Slovak SVB, bytové
> družstvá, and Czech SVJ. Run electronic voting compliant with Act 182/1993 (weighted
> shares, quorum types, mandates, audited PDF minutes), board announcements, and a
> neighbour community. Self-hosted free with one `docker compose up`, or cloud from €4/month.

### Medium (≤120 words)
> **OpenResiApp** is open-source management software for residential / homeowner
> associations in Slovakia and Czechia (SVB, bytové družstvo, SVJ). Its core is
> legally-compliant **electronic voting** under Slovak Act 182/1993: weighted by
> ownership share / flat / area, three quorum types, power-of-attorney mandates, paper
> ballots for residents without email, and SHA-256–audited PDF minutes with a QR code.
> It also covers board announcements with per-entrance targeting, document sharing, and
> a neighbour community module (marketplace, help, events, directory).
>
> AGPL-3.0. Self-host free with Docker — no vendor lock-in — or use the managed cloud
> from €4 per building/month. A privacy-respecting alternative to proprietary tools
> like Resitech.

### Show HN comment
> I built OpenResiApp because running a Slovak housing association (SVB) means holding
> legally-valid votes, and the existing tools are closed, pricey, and store everyone's
> data. This is AGPL and self-hostable in one `docker compose up`.
>
> The interesting part is the voting compliance: Act 182/1993 needs weighting by
> ownership share, multiple quorum definitions, written power-of-attorney mandates, and
> a tamper-evident record. Votes are SHA-256 chained and minutes generate to a PDF with
> an audit log + QR code. Paper ballots are supported so elderly owners aren't excluded.
>
> Stack: Next.js 16, PostgreSQL + Drizzle, NextAuth, next-intl (sk/cs/en). There's also
> a managed cloud for people who don't want a VPS. Feedback welcome — especially from
> anyone who's run an HOA/SVJ and knows where the legal edge cases bite.

### Tags / keywords
`self-hosted` `open-source` `hoa` `homeowners-association` `property-management`
`electronic-voting` `e-voting` `slovakia` `czech-republic` `svb` `svj`
`bytove-druzstvo` `docker` `nextjs` `agpl`
