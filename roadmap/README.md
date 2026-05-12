# OpenResiApp — Roadmap & Tracker

**Cieľ Q (3 mesiace, od 2026-05-12):** 1 → 10 platených komunít manuálne.
**Os:** Growth (akvizícia), ale cez customer development, NIE SEO/ads.
**Časový rozpočet:** 10 h/týždeň.
**Anti-cieľ:** zoznam featurov ako odôvodnenie odkladania predaja.

---

## Týždenný rytmus (10 h/týždeň)

| Blok | Hodín | Aktivita |
|---|---|---|
| Customer development | 4 | 4 rozhovory × 30 min + zápisky + outreach na ďalších |
| Outreach pipeline | 3 | Cold email/LinkedIn DM, lead magnet práca |
| Product (friction-based) | 2 | Fix top 3 friction points z rozhovorov |
| Reflection | 1 | Pondelok: čo som videl minulý týždeň, čo robím dnes |

**Pravidlo:** ak feature neslúži priamo cieľu „1 → 10 platených", odlož ho.

---

## 90-dňová mapa

### Mesiac 1 (týždne 1-4) — Customer Development
- [ ] 20 rozhovorov s SVB predsedami / správcami
- [ ] Min. 3 rozhovory s existujúcimi Poschodoch klientmi (čo im chýba)
- [ ] Patterns dokument: top 3 pain points
- [ ] Rozhodnutie o lead magnete

### Mesiac 2 (týždne 5-8) — Lead Magnet + Outreach
- [ ] Lead magnet hotový (1 z: Excel kvórum kalkulačka / PDF vzory / video tutorial)
- [ ] Brevo email sequence (3 emaily, drip)
- [ ] 10 outreach kontaktov/týždeň (cold email + LinkedIn DM)
- [ ] Prvé 3 trial signupy (mimo súčasného 1 platený)

### Mesiac 3 (týždne 9-12) — White-Glove Onboarding
- [ ] 5 platených komunít, každá osobne onboardovaná (Skype 30 min)
- [ ] 3 testimoniály na landing page
- [ ] Spätná väzba: ktorý kanál fungoval, koľko stálo getť 1 zákazník

---

## Súbory v tomto adresári

| Súbor | Použitie |
|---|---|
| `01-customer-interviews.csv` | 20 plánovaných rozhovorov: kontakt, dátum, status, kľúčové citáty |
| `02-outreach-pipeline.csv` | Cold outreach pipeline: leads, kanál, status |
| `03-customers.csv` | Aktívni zákazníci + trialy: kto, kedy, koľko platí, churn risk |
| `04-feedback-patterns.md` | Running notes: opakujúce sa témy z rozhovorov |
| `05-product-backlog.md` | Friction points z rozhovorov → P1/P2/P3 priority |
| `06-channels.md` | Tracking kanálov: kde si našiel zákazníka, čo fungovalo |

---

## Ako to používať s Google Sheets

1. New spreadsheet → File → Import → Upload `.csv` → "Replace current sheet"
2. Každý CSV ako samostatný **tab** v jednom Sheete (`OpenResiApp Tracker`)
3. Lokálne tu commitneš zmeny do gitu raz za týždeň (alebo `git pull` keď chceš)
4. Sheets má priority, lokálne CSV = backup + audit history v gite

Alternatíva (jednoduchšie): nech pravdivý zdroj je Sheets, lokálne CSV ignoruj okrem prvotnej štruktúry.

---

## KPI dashboard (sleduj týždenne)

| Týždeň | Rozhovory done | Outreach poslaných | Trialov | Platených | Pozn |
|---|---|---|---|---|---|
| 1 | 0 / 5 | 0 | 0 | 1 | start |
| 2 | / 5 |  |  |  |  |
| ... | ... |  |  |  |  |
| 12 | _ | _ | _ | **10** | target |

---

## Otvorené rozhodnutia (zatial)

- [ ] **Kanál #1 výber** — rozhodnúť po mesiaci 1 podľa rozhovorov: FB skupiny vs SZBD partnerstvá vs lokálni účtovníci vs LinkedIn
- [ ] **Lead magnet finálny** — Excel kvórum kalkulačka / PDF checklist / video
- [ ] **Cena pre prvých 10** — ostať na 7 €/mes, alebo dať launch promo 4 €/mes na 12 mesiacov?
- [ ] **Časový krát Slovensko vs Česko** — fokus iba na SK prvých 10? Alebo paralelne CZ?
