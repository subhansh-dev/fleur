# Existing Solutions & Gap Analysis — "Flame in Freefall"
Research date: Nov 2026. Part of the pre-event research pack (legal pre-work: reading/analysis only).

## 1. The data landscape (what NASA already provides)

### NASA PSI (Physical Science Informatics)
- Open access repository for microgravity physical science data: ISS, Space Shuttle, parabolic flights, free-flyers, commercial cargo (Cygnus/X-37B), ground studies.
- 6 disciplines; ours = **Combustion Science** (~25+ investigations).
- Now hosts **100+ investigation datasets, ~30 TB** (10 TB more adding 2025); first major system upgrade in 5 years (2024); open data, datasets downloadable per-investigation.
- **Oct 2025: PSI unified with NASA OSDR (Open Science Data Repository)** → one place for bio + physical science data, modern navigation/tools. Our project should target the unified portal but add what it lacks (below).
- PSI is also registered as an **AWS Open Data registry entry** → suggests an open S3 footprint, but the registry page may simply link the portal; direct programmatic access must be proven. Verify on Nov 13–14; if real, our ingest pipeline can pull experiment bundles directly.
- Contact: msfc-psi-help@mail.nasa.gov
- Investigator list (Combustion Science, per NASA's PSI research-opportunity listing): FLEX, FLEX-2, SAFFIRE I/II/III, SAME, SAME-R, SLICE, SPICE, plus ground studies (counterflow cool-flame transitions, advanced smoke modeling on the SAME data). BASS/BASS-II, ACME (BRE, E-FIELD, CFI-G), SoFIE, DAFT/DAFT-2 PSI-listing presence = VERIFY on the portal Nov 13 (our NTRS paper coverage is proven, but the PSI dataset listing may differ).

### NASA NTRS (Technical Reports Server)
- Free full-text PDFs of TM/TP/ICES/CONF papers — API-driven (we harvested 75 PDFs for this project already; script in research/collect-research.ps1).
- Search API: https://ntrs.nasa.gov/api/citations/search?q=...

## 2. The SI/AI-assistant landscape (existing "things")

| Tool | What it does | Why it's NOT our project |
|---|---|---|
| **Elicit** | Screening + structured extraction tables across papers | Generic; no domain schema; no microgravity data |
| **SciSpace** (Bangalore, India!) | PDF chat, lit reviews, 280M papers | Paper-by-paper, not experiment-data dashboards |
| **Consensus** | Cited yes/no evidence answers | Claim-level, not engineering-insight dashboards |
| **Scite** | Citation context (support/contrast) | Citation graph only, no structured experiment params |
| **ResearchRabbit / Litmaps / Connected Papers** | Citation graph discovery | No synthesis, no ranking, no data |
| **NotebookLM** | Closed-corpus grounded chat | No domain model, no ranking/scenario logic, slide-only UI |
| **Nested Knowledge** | Full systematic-review suite | Medical-review oriented |
| **Zotero + AI plugins** | Reference management | Library, not intelligence |
| **RobotReviewer / Rayyan / Covidence** | PICO screening, risk-of-bias automation | Clinical trials domain |

Scale conclusion: the entire SI-research stack is **generic paper tools**. Nobody does: domain-specific experiment schema + **rank by fire-safety relevance to crewed environments (O2/pressure/gravity)** + scenario interpretation (ISS/Moon/rover/spacesuit/Mars transit) + citation-linked experiment data views. **That intersection is empty → that's our moat.**

## 3. Adjacent comparable systems worth stealing UX from
- **NASA Earthdata / GIBS** — faceted search over heterogeneous datasets (great filter UX patterns).
- **OSDR** — investigation landing pages with protocol/engineering/pub tabs (structure to mirror + outrank).
- **Human Research Roadmap / GAP** — evidence-report style risk pages (our "fire safety insight cards" analog).
- **ICES Digital Library** — proceedings source; every BASS/SAFFIRE/FLEX paper almost surely has an ICES version.
- **Semantic Scholar S2AG API + OpenAlex API** — free metadata APIs; use in ingest phase to enrich investigation→publication mapping (than cite them).
- **Rayyan/RoB critique wisdom**: transparent methodology + "every claim click-through" is what review-grade tools are judged on — adopt as UI principle.

## 4. What judges will have seen before (avoid = these templates)
- Chat-with-PDF + generic pretty charts + "AI says" unverifiable insights.
- Slide decks re-narrating Wikipedia about Apollo/Mir fires.
- Dashboard showing *counts* of papers by year (no insight, no ranking).

## 5. Opportunity statement (use verbatim in pitch)
"Fifty years of microgravity combustion experiments, ~30 TB of open data, and not ONE tool that ranks and interprets them for the fire-safety decisions of the next crewed missions. PSI stores the experiments; NTRS stores the papers; SI can finally connect them — citation-grounded, scenario-ranked, decision-ready. We built the interface NASA's future missions actually need: the prevention→detection→suppression knowledge base for ISS, Moon base, pressurized rovers, spacesuits, and Mars transit."
