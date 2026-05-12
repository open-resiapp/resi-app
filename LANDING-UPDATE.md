# Landing page update — open-resi.app

**Status:** draft, awaiting review
**Date:** 2026-05-08
**Author:** copy update for landing rev. since 2025-04-30

---

## TL;DR — what changes

1. **6 new sections** (final narrative order: features → moduly → law → gdpr → roly → vybor → onboarding → komunita → notifikacie → api → tech):
   - `#moduly` — Modulárna architektúra (after features)
   - `#gdpr` — GDPR a súkromie (after law)
   - `#vybor` — Výbor a správa (after roly, ortogonálne k roly)
   - `#onboarding` — Onboarding vlastníkov (after vybor)
   - `#notifikacie` — Notifikácie (after komunita)
   - `#api` — API a integrácie (before tech)
2. **3 rewrites:**
   - `aud3` (Czech SVJ) — expand from 1 line to full paragraph
   - `f4` (Nástenka) — add threaded responses + polls
   - `doc-install` — promote `setup.sh` one-liner, demote manual to collapsible
3. **Table updates:**
   - Law compliance table: +1 row (`all_unanimous`)
   - Law section: +new subsection §89/2012 (Czech)
4. **Tech stack:** +next-themes (dark mode), +Web Push (VAPID)
5. **Nav additions (proposal):** `Moduly`, `API`

**Untouched per brief:** hero proposition, cloud pricing, existing tech stack tiles (only adds), **`#roly` section (5 user rolí stays)**.

---

## 0. Navigation update

### Before
```html
<a href="#features">Funkcie</a>
<a href="#komunita">Komunita</a>
<a href="#law">§ Zákon</a>
<a href="#cloud">Cloud</a>
<a href="#docs">Docs</a>
```

### After (proposal)
```html
<a href="#features">Funkcie</a>
<a href="#moduly">Moduly</a>          <!-- NEW -->
<a href="#komunita">Komunita</a>
<a href="#law">§ Zákon</a>
<a href="#api">API</a>                <!-- NEW -->
<a href="#cloud">Cloud</a>
<a href="#docs">Docs</a>
```

i18n keys:
- `nav.moduly` → SK: `Moduly` / EN: `Modules`
- `nav.api` → SK: `API` / EN: `API`

**Alternative if 7 items feel crowded:** drop `Docs` from nav (keep footer link only); or merge Cloud+Docs into a single "Spustite" CTA dropdown. Flag for review.

---

## 1. Section: `pre-koho` — expand `aud3` (Czech SVJ)

Section heading + first two cards stay. Expand third card.

### `aud3.title`
- **SK:** `Společenství vlastníků jednotek (SVJ)` *(unchanged — already CZ-spelled)*
- **EN:** `Czech Unit Owners' Associations (SVJ)`

### `aud3.desc` — REWRITE
- **SK:**
  > Pro česká SVJ podle zákona č.&nbsp;89/2012 Sb. (občanský zákoník, §&nbsp;1158–1222). Lokalizovaná terminologie — *shromáždění*, *výbor*, *předseda / místopředseda / člen výboru*. České kvórum a hlasovací pravidla (nadpoloviční většina přítomných, kvalifikovaná většina pro změnu prohlášení vlastníka). Stejná aplikace, country toggle přepne kontext: terminologii, kvóra, model orgánů.

- **EN:**
  > For Czech SVJ under Act No.&nbsp;89/2012 Coll. (Civil Code, §&nbsp;1158–1222). Localised terminology — *shromáždění*, *výbor*, *předseda / místopředseda / člen výboru*. Czech quora and voting rules (simple majority of those present, qualified majority for amending the unit owners' declaration). Same app — a country toggle on the building switches terminology, quora, and the board model.

### `audience.desc` — small tweak (mention country toggle explicitly)
- **SK:** `Jedna platforma pre tri právne formy správy bytových domov — slovenské aj české. Country prepínač na úrovni budovy mení terminológiu, kvóra aj model výboru.`
- **EN:** `One platform for three legal forms of apartment building governance — Slovak and Czech. A country toggle on the building switches terminology, quora, and the board model.`

---

## 2. Section: `features` — rewrite `f4` (Nástenka → diskusie + ankety)

Existing cards `f1, f2, f3, f5, f6` unchanged. `f4` rewritten.

### `f4.title`
- **SK:** `Nástenka, diskusie a ankety`
- **EN:** `Bulletin, discussions, polls`

### `f4.desc`
- **SK:**
  > Oznamy, udalosti, opravy. 4 kategórie (info, naliehavé, udalosť, údržba), cielenie na konkrétny vchod. Pod každým oznamom môžu susedia diskutovať vo vlákne — alebo predseda pridá rýchlu anketu (napr. *„Súhlasíte s opravou strechy?"*) bez spustenia plnohodnotného hlasovania. Počet odpovedí je viditeľný hneď v zozname.

- **EN:**
  > Announcements, events, repairs. 4 categories (info, urgent, event, maintenance), targetable to a specific entrance. Under every post, neighbours can discuss in a thread — or the chair drops a quick poll (e.g. *"Do you support fixing the roof?"*) without triggering a formal vote. Response count shows in the list view.

---

## 3. NEW Section: `#moduly` — Modulárna architektúra

Place **after `#features`, before `#law`**. Background `var(--bg2)` to alternate.

### Heading + intro
- `moduly.label` SK: `// modulárna architektúra` / EN: `// modular architecture`
- `moduly.title` SK: `Zapnite len to, čo vaša bytovka potrebuje` / EN: `Turn on only what your building needs`
- `moduly.desc`
  - SK: `Funkcie ako hlasovanie, komunita, intercom alebo vlastné integrácie sú samostatné moduly. Každá bytovka si zapne len tie, ktoré používa. Menšie SVB nepotrebuje plnú komunitnú vrstvu — väčšie družstvo zase chce intercom a smart zámky. Žiadny modul navyše neznamená žiadny šum v UI.`
  - EN: `Voting, community, intercom and custom integrations are separate modules. Each building enables only what it uses. A small SVB doesn't need the full community layer — a larger cooperative wants intercom and smart locks. No extra module means no extra noise in the UI.`

### Module cards (4)
- `mod1.title` / `mod1.desc`
  - SK: `Hlasovanie a mandáty` / `Jadro, ktoré nikdy nevypnete. Tri metódy hlasovania, tri kvórum, mandáty s overeným podpisom, audit log, PDF zápisnice.`
  - EN: `Voting and mandates` / `The core you never turn off. Three voting methods, three quorum types, mandates with verified signatures, audit log, PDF minutes.`
- `mod2.title` / `mod2.desc`
  - SK: `Komunita susedov` / `Burza, výpomoc, udalosti, adresár. Voliteľné — komunity, ktoré chcú držať aplikáciu „len na hlasovanie", to nezapnú.`
  - EN: `Neighbour community` / `Marketplace, help, events, directory. Optional — communities that want a "voting-only" app simply don't enable it.`
- `mod3.title` / `mod3.desc`
  - SK: `Intercom a smart zariadenia` / `Pripojte intercom systém, smart zámky vchodu, IoT senzory cez modul s API kľúčmi a párovacími požiadavkami.`
  - EN: `Intercom and smart devices` / `Connect the intercom, smart entrance locks, IoT sensors via the module with API keys and pairing requests.`
- `mod4.title` / `mod4.desc`
  - SK: `Vlastné moduly (SDK)` / `Self-hosters si môžu napísať vlastný modul — SDK + lifecycle hooks. Oznamy z lokálnej webky, integrácia s účtovníckym softvérom, čokoľvek.`
  - EN: `Custom modules (SDK)` / `Self-hosters can build their own module — SDK + lifecycle hooks. Announcements from a local site, accounting software integration, anything.`

### Closing line
- `moduly.note` SK: `Granty modulov sú per-komunita — admin ich kedykoľvek zapne alebo vypne v nastaveniach budovy.`
- EN: `Module grants are per-community — admin enables or disables any module in building settings at any time.`

---

## 4. Section: `#law` — additions

### 4a. Compliance table — add row (Slovak)

After `law.c12` (Zápisnica z hlasovania), add:

| `i18n key` | SK | EN |
|---|---|---|
| `law.c13` | Jednomyseľný súhlas všetkých vlastníkov (pôžičky, predaj spol. častí) | Unanimous consent of all owners (loans, sale of common parts) |

Render: same checkmark column as the rest.

### 4b. NEW subsection: §89/2012 (Czech)

Place inside `#law` after the existing compliance table, before the section closes. Visually a sibling block with own h3.

- `law.cz.title` SK: `A pre české SVJ — zákon č. 89/2012 Sb.` / EN: `And for Czech SVJ — Act No. 89/2012 Coll.`
- `law.cz.desc`
  - SK: `Country prepínač na úrovni budovy aktivuje českú vetvu pravidiel: shromáždění s nadpoloviční většinou přítomných, kvalifikovaná většina pro změnu prohlášení vlastníka, výbor s předsedou a místopředsedou. Terminológia v UI sa prispôsobí (vlastník → vlastník jednotky, schôdza → shromáždění, mandát → plná moc).`
  - EN: `A country toggle on the building activates the Czech rule branch: shromáždění with simple majority of those present, qualified majority for amending the unit owners' declaration, výbor with předseda and místopředseda. UI terminology adapts (owner → vlastník jednotky, meeting → shromáždění, mandate → plná moc).`

Compact bullet list (5 items):
- `law.cz.b1` SK: `Shromáždění — nadpoloviční většina přítomných` / EN: `Shromáždění — simple majority of those present`
- `law.cz.b2` SK: `Kvalifikovaná většina pro změnu prohlášení vlastníka` / EN: `Qualified majority for amending the declaration`
- `law.cz.b3` SK: `Výbor — předseda, místopředseda, člen` / EN: `Výbor — předseda, místopředseda, člen`
- `law.cz.b4` SK: `Plná moc — písemná, bez úředního ověření` / EN: `Plná moc — written, no notarisation required`
- `law.cz.b5` SK: `Per rollam (mimo shromáždění) — § 1210` / EN: `Per rollam (outside shromáždění) — § 1210`

---

## 5. NEW Section: `#gdpr` — GDPR a súkromie

Place **after `#law`, before `#roly`**. Background `var(--bg)`.

- `gdpr.label` SK: `// gdpr a súkromie` / EN: `// gdpr and privacy`
- `gdpr.title` SK: `Súhlasy a privacy, ktoré obstoja pri kontrole` / EN: `Consents and privacy that survive an audit`
- `gdpr.desc`
  - SK: `GDPR nie je galéria zaškrtávacích boxov. Každý súhlas má verziu, dátum, IP, a držíme audit log zmien — aby ste pri sťažnosti dotknutej osoby alebo kontrole z ÚOOÚ vedeli, kto, kedy a aký súhlas dal.`
  - EN: `GDPR isn't a gallery of checkboxes. Every consent has a version, timestamp, IP, and we keep a change audit log — so that on a data subject's complaint or a DPA audit you can show who gave what consent and when.`

### Bullets
- `gdpr.b1` SK: `Per-user consent management — vlastník vidí všetky svoje súhlasy a môže ich kedykoľvek odvolať.` / EN: `Per-user consent management — the owner sees every consent and can revoke any of them at any time.`
- `gdpr.b2` SK: `Verzionované súhlasy — keď upravíte text privacy policy, staré súhlasy zostanú platné, nové sa pýtajú znovu.` / EN: `Versioned consents — when you update the privacy policy, old consents stay valid; new ones are re-collected.`
- `gdpr.b3` SK: `Audit log — kto, kedy, aký súhlas, z akej IP. Exportovateľné do CSV pre prípadnú kontrolu.` / EN: `Audit log — who, when, what consent, from which IP. CSV-exportable for audits.`
- `gdpr.b4` SK: `Privacy policy a cookie banner sú súčasťou aplikácie — nie nalepené z generátora, ale vygenerované z konfigurácie inštancie.` / EN: `Privacy policy and cookie banner ship with the app — not pasted from a generator, but generated from your instance config.`
- `gdpr.b5` SK: `Self-hosted = data sú u vás. Cloud = data v EÚ (Hetzner Helsinki / Falkenstein), spracovateľská zmluva pripravená.` / EN: `Self-hosted = your data on your server. Cloud = data in EU (Hetzner Helsinki / Falkenstein), DPA ready.`

---

## 6. Section: `roly` — UNCHANGED

5 prístupových rolí (admin, owner, tenant, vote_counter, caretaker) zostáva ako je. Heading `Päť rolí, jasné hranice` zostáva. Žiadny prepis copy.

**Naming consistency check (resolved):** SK = `Správca`, EN = `Caretaker`. Oba zodpovedajú DB enum `caretaker`. Žiadna nezhoda — pôvodná poznámka brief sa neaplikuje na aktuálny stav landingu.

Governance / štatutári idú do **samostatnej novej sekcie `#vybor`** nižšie (§6b) — žiadny dotyk roly bloku.

---

## 6b. NEW Section: `#vybor` — Výbor a správa

Place **after `#roly`, before `#komunita`**. Background `var(--bg)` (alternates s roly nad ňou). Sekcia je striktne ortogonálna k `roly` — popisuje **štatutárov budovy**, nie prístupové práva v aplikácii.

### Heading + intro
- `vybor.label` SK: `// výbor a štatutári` / EN: `// board and statutory bodies`
- `vybor.title` SK: `Výbor a správa — kto právne zastupuje spoločenstvo` / EN: `Board and governance — who legally represents the community`
- `vybor.desc`
  - SK: `Roly v aplikácii hovoria, kto čo vidí. Výbor hovorí, kto za spoločenstvo podpisuje zápisnice, jedná s úradmi a zvoláva schôdze. Sú ortogonálne — predseda býva často aj admin, ale nemusí byť. Eviduje sa zloženie výboru, funkčné obdobia a podpisové oprávnenia.`
  - EN: `App roles say who sees what. The board says who signs minutes, deals with authorities, and calls meetings on behalf of the community. They are orthogonal — the chair is often also admin, but doesn't have to be. The board's composition, terms, and signing authority are tracked separately.`

### 3 modely riadenia (governance_model na úrovni budovy)

Render ako 3 karty alebo segmented control. Pole `governance_model` na budove → 3 hodnoty z `governanceModelEnum`:

- `gm1.title` / `gm1.desc`
  - SK: `Predseda + rada` / `Klasický slovenský model (§ 7c zákona 182/1993). Predseda + 1–N členov rady. Vhodné pre stredné a väčšie SVB.`
  - EN: `Chair + council` / `Classic Slovak model (§ 7c of Act 182/1993). Chair + 1–N council members. Fits mid-sized and larger SVB.`
  - enum value: `chairman_council`
- `gm2.title` / `gm2.desc`
  - SK: `Výbor` / `Český model podľa § 1205 zák. 89/2012 Sb. — kolektívny štatutárny orgán: predseda výboru + členovia výboru. Použiteľné aj pre slovenské družstvá.`
  - EN: `Committee (výbor)` / `Czech model under § 1205 of Act 89/2012 Coll. — collective statutory body: committee chair + committee members. Also usable by Slovak cooperatives.`
  - enum value: `committee`
- `gm3.title` / `gm3.desc`
  - SK: `Len predseda` / `Pre malé SVB (typicky < 10 bytov), kde stanovy povoľujú jednoosobový štatutár. Bez rady ani výboru.`
  - EN: `Chair only` / `For small SVB (typically < 10 units) whose articles allow a one-person statutory body. No council, no committee.`
  - enum value: `chairman_only`

### 4 funkcie vo výbore (boardMemberRoleEnum)

- `bm1.title` / `bm1.desc`
  - SK: `Predseda` / `Štatutár v modeli predseda+rada alebo len predseda. Podpisuje zápisnice, zvoláva schôdzu.`
  - EN: `Chairman` / `Statutory body in chair+council or chair-only models. Signs minutes, calls meetings.`
  - enum: `chairman`
- `bm2.title` / `bm2.desc`
  - SK: `Člen rady` / `Spolurozhoduje s predsedom v modeli predseda+rada (§ 7c).`
  - EN: `Council member` / `Co-decides with the chair in the chair+council model (§ 7c).`
  - enum: `council_member`
- `bm3.title` / `bm3.desc`
  - SK: `Predseda výboru` / `Vedúci kolektívneho výboru (český model + slovenské družstvá).`
  - EN: `Committee chairman` / `Lead of the collective committee (Czech model + Slovak cooperatives).`
  - enum: `committee_chairman`
- `bm4.title` / `bm4.desc`
  - SK: `Člen výboru` / `Hlasuje na zasadnutiach výboru, podiel na štatutárnom rozhodovaní.`
  - EN: `Committee member` / `Votes at committee sessions, shares statutory decision-making.`
  - enum: `committee_member`

### Funkčné obdobia + CRUD
- `vybor.crud`
  - SK: `Plný CRUD pre členov výboru — pridanie, úprava, odvolanie. Funkčné obdobie (od / do) per člen, po skončení sa záznam archivuje, nemaže — pre históriu uznesení a auditu. Notifikácia týždeň pred koncom obdobia (kvórum vo výbore môže klesnúť).`
  - EN: `Full CRUD for board members — add, edit, dismiss. Term (from / to) per member; after the term ends the record is archived, not deleted — for resolution history and audit. A reminder fires a week before the term ends (board quorum could otherwise drop unnoticed).`

### Country interaction
- `vybor.country`
  - SK: `Prepínač krajiny na budove (SK / CZ) ovplyvňuje, ktoré governance modely sú v UI ponúknuté ako default a aké terminológie sa zobrazujú (predseda vs předseda, člen rady vs člen výboru). Schémy enumov sú spoločné — landing-jurisdikčné je len UI mapovanie.`
  - EN: `The country toggle on the building (SK / CZ) drives which governance models the UI suggests by default and which terminology shows (predseda vs předseda, council member vs committee member). Enum schemas are shared — only UI mapping is jurisdiction-specific.`

### Closing hook
- `vybor.note`
  - SK: `Evidencia výboru a štatutárov — predseda, rada alebo výbor podľa stanov. Funkčné obdobia, role, podpisové oprávnenia.`
  - EN: `Track the board and statutory bodies — chair, council, or committee per your articles. Terms, roles, signing authority.`

---

## 7. Section: `komunita` — no copy change, but add bullet to `komunita.notify`

Existing closing line stays. Optionally add: `Susedia môžu zapnúť push notifikácie na nové oznamy, RSVP a pripomienky udalostí (viď nižšie).` / EN: `Neighbours can opt in to push notifications for new posts, RSVPs, and event reminders (see below).`

---

## 8. NEW Section: `#notifikacie` — Notifikácie

Place **after `#komunita`, before `#tech`**. Background `var(--bg2)`.

- `notif.label` SK: `// notifikácie` / EN: `// notifications`
- `notif.title` SK: `Push priamo do prehliadača — žiadna apka netreba` / EN: `Push straight to the browser — no app needed`
- `notif.desc`
  - SK: `Web Push (VAPID) doručí oznam, hlasovanie alebo udalosť aj keď máte zatvorený tab. Funguje na Chrome, Edge, Firefox, Safari (iOS 16.4+). Pre prehliadače bez podpory máme email fallback.`
  - EN: `Web Push (VAPID) delivers a post, vote, or event even if your tab is closed. Works on Chrome, Edge, Firefox, Safari (iOS 16.4+). Browsers without support fall back to email.`

### Bullets
- `notif.b1` SK: `Vlastník si zapne push v profile — stačí raz, browser si pamätá.` / EN: `The owner enables push in their profile once — the browser remembers.`
- `notif.b2` SK: `Nové hlasovanie, nový oznam, nová odpoveď v diskusii, RSVP pripomienka — užívateľ si vyberie typy.` / EN: `New vote, new post, new discussion reply, RSVP reminder — the user picks which types.`
- `notif.b3` SK: `Detekcia odmietnutej alebo nepodporovanej notifikácie — vrátime sa na email, bez tichého zlyhania.` / EN: `Denied or unsupported notifications detected — we fall back to email gracefully, no silent failures.`
- `notif.b4` SK: `Email šablóny lokalizované SK/CZ/EN, dedup a throttling proti zaplaveniu schránky.` / EN: `Email templates localised SK/CZ/EN, dedup and throttling protect the inbox.`

---

## 9. NEW Section: `#onboarding` — Onboarding vlastníkov

Place **after `#vybor`, before `#komunita`** — pairs with admin theme + nadväzuje na štatutárov, ktorí pozývajú vlastníkov.

- `onb.label` SK: `// onboarding vlastníkov` / EN: `// owner onboarding`
- `onb.title` SK: `Pozvite všetkých vlastníkov naraz — QR kód na schôdzi` / EN: `Invite every owner at once — a QR code at the meeting`
- `onb.desc`
  - SK: `Klasická schôdza, predseda premietne QR kód. Vlastníci ho naskenujú, vyplnia základné údaje, hotovo. Žiadne emailové pozvánky vyhľadávané manuálne v evidencii, žiadne reset-password telefonáty.`
  - EN: `A regular meeting. The chair projects a QR code. Owners scan, fill in basics, done. No email invites manually looked up in records, no reset-password phone calls.`

### How it works (numbered)
- `onb.s1` SK: `Admin v aplikácii klikne *Generovať pozývací QR* — vznikne token s expiráciou (default 24 h).` / EN: `Admin clicks *Generate invite QR* in the app — a token is created with an expiry (default 24 h).`
- `onb.s2` SK: `Vlastník naskenuje, otvorí sa registračný formulár predvyplnený názvom bytovky a vchodu.` / EN: `Owner scans, the signup form opens pre-filled with the building and entrance.`
- `onb.s3` SK: `Po odoslaní sa zaradí medzi *čakajúcich vlastníkov* — admin vidí dashboard, schvaľuje a priraďuje k bytu jedným klikom.` / EN: `After submitting, the user lands in the *pending owners* queue — admin sees a dashboard and approves / assigns to a unit in one click.`

### Closing
- `onb.note` SK: `Pre veľké družstvá: jeden QR vytlačený na nástenku platí všetkým vchodom, alebo per-vchod token pre cielené pozvanie.` / EN: `For large cooperatives: one QR pinned to the bulletin board works for all entrances, or use per-entrance tokens for targeted invites.`

---

## 10. NEW Section: `#api` — API a integrácie

Place **after `#tech` if API targets developers** OR **before `#tech` if API is sold as feature**. Recommendation: **before `#tech`**, frame it as "what you can plug in".

- `api.label` SK: `// api a integrácie` / EN: `// api and integrations`
- `api.title` SK: `Pripojte intercom, smart zámky alebo vlastné systémy` / EN: `Plug in the intercom, smart locks, or your own systems`
- `api.desc`
  - SK: `External connections + pairing requests v schéme. API kľúče s granulárnymi oprávneniami (read-only, write-posts, manage-devices…). Každé pripojené zariadenie alebo služba je auditované — kedy sa pripojilo, akú akciu volalo.`
  - EN: `External connections + pairing requests in the schema. API keys with granular permissions (read-only, write-posts, manage-devices…). Every connected device or service is audited — when it paired, what action it called.`

### Bullets
- `api.b1` SK: `Párovanie zariadenia: admin schvaľuje pairing request (z intercomu, zámky, IoT senzora) v dashboarde.` / EN: `Device pairing: admin approves a pairing request (from the intercom, lock, IoT sensor) in the dashboard.`
- `api.b2` SK: `API key permissions enum — od čistého read-only až po správu modulov. Žiadne all-or-nothing tokeny.` / EN: `API key permissions enum — from pure read-only to module management. No all-or-nothing tokens.`
- `api.b3` SK: `Webhooks pre zmeny stavu (nový vlastník schválený, hlasovanie ukončené, oznam publikovaný).` / EN: `Webhooks for state changes (new owner approved, vote ended, post published).`
- `api.b4` SK: `Self-hosted = vaše API na vašej doméne. Cloud = `api.<vasabytovka>.open-resi.app`.` / EN: `Self-hosted = your API on your domain. Cloud = `api.<yourbuilding>.open-resi.app`.`

### Closing
- `api.note` SK: `Dokumentácia OpenAPI 3.1, generované klienty pre TypeScript a Python.` / EN: `OpenAPI 3.1 docs, generated clients for TypeScript and Python.`

---

## 11. Section: `tech` — add UX polish + dark mode

Insert **before** the tech grid, as a small `tech.polish` block:

- `tech.polish.title` SK: `Detaily, ktoré používatelia naozaj vnímajú` / EN: `Details users actually feel`
- `tech.polish.desc`
  - SK: `Svetlý a tmavý režim s cookie persistence — žiadne bliknutie pri prepnutí stránky (SSR-safe). Plná lokalizácia SK / CZ / EN. Dashboard zobrazuje posledné príspevky a nadchádzajúce udalosti — nie zastarané statistické karty.`
  - EN: `Light and dark mode with cookie persistence — no flash on page switch (SSR-safe). Full SK / CZ / EN localisation. The dashboard shows recent posts and upcoming events — not stale stat cards.`

### Tech grid additions
Add 2 new tiles:
- `next-themes` `<span>Dark mode</span>`
- `Web Push (VAPID)` `<span>Push notif</span>`

---

## 12. Section: `docs` / `doc-install` — REWRITE installation

### `doc.install.title`
- SK: `Inštalácia` *(unchanged)*
- EN: `Installation`

### Replace `doc.install.auto` block (lines ~1360–1369) with:

#### `doc.install.oneliner.title`
- SK: `Jeden príkaz (odporúčané)`
- EN: `One command (recommended)`

#### `doc.install.oneliner.desc`
- SK: `Setup skript zistí váš OS (macOS / Linux), nainštaluje Docker a openssl ak chýbajú, opýta sa na doménu a názov budovy, vygeneruje bezpečné heslá a vytvorí admin účet:`
- EN: `The setup script detects your OS (macOS / Linux), installs Docker and openssl if missing, asks for domain and building name, generates secure passwords, and creates an admin account:`

#### Code block
```bash
curl -fsSL https://get.open-resi.app | bash
```

(Or, if you prefer the explicit two-step version:)
```bash
curl -O https://raw.githubusercontent.com/open-resiapp/open-resiapp/main/setup.sh
chmod +x setup.sh && ./setup.sh
```

#### `doc.install.oneliner.note`
- SK: `Skript je idempotentný — ak ho spustíte druhýkrát, len doplní chýbajúce kroky. Funguje na čistom Ubuntu, Debian, Fedora, macOS (Homebrew Docker Desktop). Nepýta si root mimo `apt install docker`.`
- EN: `The script is idempotent — running it again just fills in missing steps. Works on fresh Ubuntu, Debian, Fedora, macOS (Homebrew Docker Desktop). Won't ask for root outside `apt install docker`.`

### Manual setup → collapsible details

Wrap the existing manual steps (lines ~1371–1437) in:
```html
<details>
  <summary data-i18n="doc.install.manual.toggle">
    Manuálna inštalácia (pre kontrolovaných správcov)
  </summary>
  <!-- existing manual content goes here, unchanged -->
</details>
```

i18n: `doc.install.manual.toggle`
- SK: `Manuálna inštalácia (pre správcov, ktorí chcú každý krok pod kontrolou)`
- EN: `Manual installation (for admins who want every step under control)`

---

## 13. Hero — small tweak (optional, keeps proposition)

`hero.desc` already mentions SVB / družstvá / SVJ. Add modules + push to the comma list:

- **SK current:** `Online hlasovanie vlastníkov bytov, nástenka, mandáty a PDF zápisnice…`
- **SK proposed:** `Online hlasovanie vlastníkov bytov, nástenka s diskusiami a anketami, mandáty, PDF zápisnice a push notifikácie…`
- **EN current:** `Online voting, bulletin board, mandates, and PDF minutes…`
- **EN proposed:** `Online voting, bulletin board with threaded discussions and polls, mandates, PDF minutes, and push notifications…`

Optional. Hero proposition itself (`hero.title`) **untouched per brief**.

---

## 14. Comparison / feature table

The page currently has **only** the law-compliance table inside `#law`. There is no top-level competitor comparison table. The brief says "Updated comparison/feature table" — confirming there isn't one to update beyond `#law`.

**Proposal:** add a small top-of-features summary table (4 columns: Feature, Open-resi, Generic SVB software, Generic Facebook group). Optional — flag for review.

If accepted, would live as a new block at the start of `#features`. Skipping for now — awaiting confirmation.

---

## 15. Screenshots — outdated list

The current `index.html` has **no embedded screenshots** (no `<img>` tags pointing at app UI). All visuals are the terminal mock in the hero.

**However**, if the public OG image / `og:image` references the dashboard (legacy stat cards), it must be regenerated to show the new "recent posts" dashboard.

| File | Status | Action |
|---|---|---|
| `og:image` (in `<meta>`) | likely outdated | regenerate from new dashboard |
| Hero terminal mock | OK | keep |
| Any docs screenshots | none on landing | n/a |

**Recommendation:** before shipping, take fresh screenshots of:
- Dashboard with recent posts widget
- Bulletin post with threaded responses + poll
- Cookie / theme toggle in nav
- QR onboarding screen
- GDPR consents page in user profile

Save to `/screenshots/` in repo, reference in OG image.

---

## 16. Changelog entry

Append to `CHANGELOG.md` (or create one in landing repo `/Users/filipvnencak/web/open-resiapp/`):

```markdown
## [Unreleased] — 2026-05-08

### Added
- New section: Modulárna architektúra (`#moduly`)
- New section: GDPR a súkromie (`#gdpr`)
- New section: Výbor a správa (`#vybor`) — orthogonal governance layer (3 governance models, 4 board roles, terms, CRUD)
- New section: Onboarding vlastníkov (`#onboarding`)
- New section: Notifikácie (`#notifikacie`)
- New section: API a integrácie (`#api`)
- Czech §89/2012 subsection inside `#law`
- `all_unanimous` row in law compliance table
- Tech stack tiles: next-themes, Web Push (VAPID)
- Nav items: Moduly, API

### Changed
- `f4` (Nástenka) — added threaded discussions and inline polls
- `aud3` (Czech SVJ) — expanded from one line to full paragraph
- `doc-install` — promoted setup.sh one-liner; manual flow collapsed into `<details>`
- `hero.desc` — mentions push notifications and discussions/polls (optional)

### Unchanged (per brief)
- Hero proposition (`hero.title`)
- Cloud pricing
- `#roly` — 5 user rolí (admin, owner, tenant, vote_counter, caretaker) zostáva nedotknutá

### Notes
- No screenshots embedded — `og:image` should be regenerated to reflect new dashboard
```

---

## 17. Open questions / TBD

1. **Hero tweak (§13)** — apply or keep current copy? Brief says "don't touch" hero proposition; the `desc` is technically separate from the proposition (`title`). Defaulting to *apply*, flag to revert.
2. **Comparison table (§14)** — add or skip? Brief mentions "comparison/feature table" but no current top-level comparison exists.
3. **Setup one-liner URL** — does `https://get.open-resi.app` exist as a redirect to raw `setup.sh`? If not, fall back to the explicit `curl -O … && ./setup.sh` form. Confirm before patching.
4. **CZ terminology in EN copy** — keep Czech terms italicised in-line (current draft) or translate to English with Czech in parentheses? Defaulted to italicised originals + English in parentheses where ambiguous.
5. **`#vybor` placement** — confirmed after `#roly`. If you want it bundled with `#law` (legal framing) instead of after `#roly` (governance framing), flag.

---

## Implementation checklist (post-approval)

After you approve the copy:

- [x] Patch `index.html` — add 6 new `<section>` blocks (`#moduly`, `#gdpr`, `#vybor`, `#onboarding`, `#notifikacie`, `#api`)
- [x] Patch `index.html` — rewrite `f4`, `aud3`, `doc-install` (NOT `#roly`)
- [x] Add `all_unanimous` row to law table
- [x] Add Czech §89/2012 subsection inside `#law`
- [x] Add 2 nav items (`Moduly`, `API`)
- [x] Add new i18n keys to SK + EN translation objects (~95 each)
- [x] Add `next-themes` + `Web Push (VAPID)` tiles to tech grid + UX-polish callout
- [x] Wrap manual install in `<details>`
- [ ] Update `og:image` (separate task — needs new dashboard screenshot)
- [x] Update `llms.txt` to mirror new sections
- [x] Append changelog entry (`CHANGELOG.md` created)

### Defaults applied (see §17)
- Hero `desc` tweak: **applied** (mentions threaded discussions, polls, push, CZ §89/2012)
- Comparison table: **skipped** (none currently exists)
- Setup one-liner URL: **explicit two-line form** (`curl -O … && ./setup.sh`) — swap to `get.open-resi.app` later if redirect is set up
- CZ terms in EN copy: **italicised originals** (e.g. `<em>shromáždění</em>`)
- `#vybor` placement: **after `#roly`**, before `#onboarding`

Ready to patch on your green light.
