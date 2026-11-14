# FEATURE LADDER — T0 → T3 (build contract, thin on basics, thick on advanced)
Rule: basics are 10% of effort because we're a strong team. Advanced+Overdrive are where the 48 hours go.
Each feature = a PASSPORT: What / Why judges care / How (implementation contract) / Depends on / Demo beat / Kill order.

---

## T0 — Foundation (target: DONE by hour 4) — do not gold-plate
| Feature | Contract | Notes |
|---|---|---|
| App scaffold | Next.js 14 TS + Tailwind + shadcn; FastAPI + SQLite; `/api/health` | One repo, two services, docker-compose (optional) |
| Canonical DB | DDL from ARCHITECTURE.md §3 loaded with 12 verified investigations | pydantic models mirrored in TS types |
| Design system | Dark "mission control" theme, 1 font family (Inter/Space Grotesk), orange/blue accent (#FF6A00 / #3E9BFF) | NO default Tailwind blue, adds judge-grade polish for free |
| Data status badges | `PSI:open` / `future (LUCI-FM2)` pills | Honesty = credibility |

## T1 — Core intelligence (hours 4–12) — the product IS here
1. **Scenario Engine** — WHAT: environment selector (ISS / Moon Base / Rover / Suit / Mars transit / Gateway) storing O2/pressure/gravity presets. WHY: converts challenge objective #1 into one click. HOW: `environments` table + context state; every view re-ranks server-side, client caches per scenario (SWR). DEPS: DB. DEMO BEAT: opening hook; the "Moon Base" click is the money moment. KILL: never.
2. **Ranked Evidence List** — WHAT: investigations ranked via transparent rubric (ARCH §4) with per-factor bars + 2-sentence SI why + citation chips. HOW: precompute per environment at build-end (cron-ish script), API serves materialized rows → snappy. WHY: "summarize, RANK" is verbatim challenge language. KILL: never.
3. **Investigation Matrix** — WHAT: BASS vs FLEX vs CFI… × attributes (fuel/form, O2 range tested, flow, pressure, sensors, phase). HOW: sticky header table + radar chart (ECharts) of coverage vectors (O2 span %, flow span, #tests, data openness). WHY: challenge §3 names "similarities & differences" explicitly. KILL: never.
4. **Citation Protocol v1** — WHAT: every generated sentence → {claim, citation_ids[], quote_span} objects; UI renders text with inline [🔗] chips → click opens PDF at page. HOW: forced JSON schema output (pydantic + constrained JSON mode), spans stored; page numbers from chunk metadata. WHY: kills the "AI hallucination" doubt = primary judge objection. KILL: never.

## T2 — Advanced (hours 12–26, main investment) — this is "advanced project" territory
5. **Hybrid retrieval (structured×semantic)** — WHAT: Ask-FLARE answers from BOTH structured test_runs rows (SQL) AND PDF chunk embeddings (sqlite-vec + FTS5 BM25 sibling), fused by reciprocal-rank-fusion (k=60). WHY: pure-RAG bros fail numeric questions ("which O2 levels tested?") — we won't. HOW: query router (rules first: fuel/o2/flow keywords → SQL; natural language → retrieval; both → fuse). DEPS: T1#4 protocol. DEMO BEAT: "Which investigations pushed O2 above 40%?" → CFI-G ranked answer + chart. KILL: late — this is the hardest SI flex, keep to last quarter.
6. **Parameter Intelligence (Predictive view)** — WHAT: per fuel-type interactive dot-plot of extinction/spread limits vs O2% (and vs flow); regime curves auto-fit (simple log/linear); CSV export = "data for predictive modeling" (objective #2). WHY: makes judges see the *data* not just words; the fit line is honest interpolation with visible point scatter. HOW: ECharts scatter + polyfit in TS (no numpy needed), export from API. KILL: after chat if forced.
7. **Evidence Ledger / Data lineage viewer** — WHAT: click any fact in UI "Where from?" → shows extraction chain: PDF → extraction prompt version → test row id → verification status; flag `llm_auto` vs `verified`. WHY: research-grade integrity, nobody else does it, zero code risk (just UI over metadata we keep anyway). KILL: after parameter view.
8. **Cosmic timeline + incident cards** — WHAT: horizontal timeline (Apollo 1 → Mir → BASS 2008 → SAFFIRE 2016 → Artemis II alarm) with linked "incident card" modals citing NTRS docs. WHY: emotional framing + makes the pitch un-replaceable. KILL: cheap to build, keep.
9. **Mission Brief export** — WHAT: one-click printable PDF "fire safety brief" for chosen scenario: ranked list, top 5 findings, open gaps. HOW: react-to-print or headless print CSS. WHY: judges take handouts home = memorability. KILL: early if behind.

## T3 — Overdrive (hours 26–40, only if T2 green) — "how did they do that?"
10. **Lunar-g Bounding Panel** — WHAT: slider 0g→1g showing flammability envelope (µg and 1g bounds shaded, interpolation dashed, every curve labeled "bounded interpolation, not measurement"). HOW: architecture per ARCH §6; interpolation method = log-linear in O2 limits as the starting hypothesis — VALIDATE on our parameter data before trusting; optionally anchor with the 2024–26 NTRS partial-g papers we harvested (LUCI rocket 20250010653, FM2 20240008623/20240015307, lunar/Martian-gravity 20260000646); render SVG. WHY: THE signature feature — challenge explicitly invites it ("bound what occurs at intermediate levels"); PSI still has no partial-g datasets but NTRS papers exist we can cite. DEPS: parameter data. KILL: last to die.
11. **SI Evaluation Harness (self-audit)** — WHAT: small panel (or dev route) showing our own QA suite: 20 golden questions with expected citations; live "citation precision" score (e.g., 18/20 spans verified). HOW: nightly-run results cached in DB; honest display "self-check: 90% claims citation-verified". WHY: judges at SI events LOVE tooling that audits itself; shows engineering maturity far beyond "we used GPT". KILL: after bounding panel.
12. **Multi-model agreement shield** — WHAT: for top-3 most consequential claims per environment, run 2nd LLM → agreement badge (✅ corroborated / ⚠️ divergent). HOW: 2 API calls per claim, cheap; divergent → auto-flag in UI. WHY: next-level trust signal. KILL: first in T3.
13. **Prevention-Detection-Suppression map** — WHAT: triad wheel view of environments × phases with heat intensity from rankings + hovering insight cards. HOW: D3 wheel or nested flex; low technical risk, high visual signal. KILL: any time, it's cosmetic.

## What we deliberately DON'T build (discipline list)
- User accounts/auth (dead weight in 48h)
- Realtime PSI sync (download once, verify manually)
- 3D/VR flame visualization (cool ≠ score)
- Mobile-native anything; wide responsive = enough
- Multi-language (hindi/EN fine, no extra work)
- Admin CMS — data loads via scripts

## Build-order DAG (dependency truth)
```
T0 scaffold+DB ──► T1 scenarios+ranked ──► T1 citation protocol ──► T2 hybrid retrieval
        └────────► T1 matrix ──► T2 parameter view ──► T2 mission brief ──► T3 bounding ──► T3 eval harness
```
Hour-16 checkpoint: if T1 incomplete → T2 reduced to (5 hybrid-lite, 6 parameter) and T3 skipped.
Hour-30 checkpoint: all T2 done → enable T3 max 2 features bounding + eval harness first.
