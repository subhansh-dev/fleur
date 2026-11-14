# DATA SOURCES MASTER DOC — where every byte for this project lives

> Compiled Nov 14, 2026. Everything here is public, free, and citation-ready.

---

## 1. NASA PSI (Physical Sciences Informatics) — the official data source of record

- **Portal:** https://psi.nasa.gov (redirects into the unified BPS Data page:
  https://science.nasa.gov/biological-physical/data/)
- **What it is:** open-access repository of microgravity physical-science experiment data — ISS,
  Space Shuttle, free-flyers (Cygnus/X-37B), commercial cargo, and related ground studies.
- **Six disciplines:** Biophysics · Combustion Science · Complex Fluids · Fluid Physics ·
  Fundamental Physics · Materials Science.
- **Scale (NASA-sourced):** PSI hosts **100+ investigation datasets, ~30 TB total**; the Combustion
  Science area shown in the challenge walkthrough has **24 investigations, 12 TB**.
- **What each investigation page gives you:** overview, objectives, approach, left-side folder tree
  (per-sample scientific data folders), documents, and publications (blue links, each with a DOI).
- **Status update (Sept–Oct 2025):** PSI and OSDR were consolidated onto the BPS Data page
  (science.nasa.gov/biological-physical/data/) — "Now you can explore biological and physical
  science datasets all in one place." Source:
  https://science.nasa.gov/science-research/biological-physical-sciences/osdr-and-psi-unveil-new-consolidated-website/
- **Example dataset page:** PSI-101 = SAME-R:
  https://psi.nasa.gov/physci/repo/data/investigations/PSI-101 (contains per-test folders with
  sample type, inlet velocity cm/s, aging times, and the SAME-R_Final_Report.pdf)
- **Programmatic access reality:** no documented public API; the third-party Space Data Atlas lists
  a candidate search endpoint
  (`https://psi.nasa.gov/physci/repo/search?q=&data_source=psi&data_type=investigation`) but a Nov-14
  probe returned no content — **plan for manual per-investigation downloads**.
- **Help contact:** msfc-psi-help@mail.nasa.gov
- **PSI registration:** listed as an AWS Open Data registry entry (registry page may only link the
  portal — direct S3 access must be proven, not assumed).

### The official PSI combustion investigation list (25 entries incl. ground studies)
Source: https://www.nasa.gov/physical-sciences-informatics-psi/psi-investigations-by-research-area/
Flight: ACME BRE · ACME CLD Flame · ACME E-FIELD Flames · ACME s-Flames · BASS · BASS-II · CFI ·
DAFT/DAFT-2 · FLEX · FLEX-2 · SAFFIRE-I (CRS OA-6) · SAFFIRE-II (CRS OA-5) · SAFFIRE-III (CRS OA-7) ·
SAME · SAME-R · SLICE · SPICE.
Ground: Cool Flame Transitions counterflow study · SAME-data smoke-generation modeling study.
Completion status: all listed Complete except FLEX/FLEX-2/SAFFIRE I–III/SAME/SAME-R/SLICE/SPICE
entries without explicit status strings on that page.

---

## 2. NASA NTRS (Technical Reports Server) — the papers layer

- **Portal:** https://ntrs.nasa.gov
- **Search API (proven, JSON):** `https://ntrs.nasa.gov/api/citations/search?q=...`
  Example starter (Space Data Atlas):
  ```python
  import requests
  params = {"q": "microgravity flame spread spacecraft fire safety", "page.size": 5}
  r = requests.get("https://ntrs.nasa.gov/api/citations/search", params=params, timeout=60)
  data = r.json(); print(data["stats"]["total"])
  ```
- **Citation URL pattern:** `https://ntrs.nasa.gov/citations/{ID}`
- **Full-text PDF pattern:** `https://ntrs.nasa.gov/api/citations/{ID}/downloads/{ID}.pdf`
- NTRS items authored by NASA are **public domain** (figures/text usable with attribution).
- This project's pre-harvested corpus: 75 NTRS PDFs (see 10-CITATIONS-MASTER.md).

---

## 3. NASA OSDR (Open Science Data Repository) — the sibling repository

- Portal: https://science.nasa.gov/biological-physical/data/osdr/
- Life-science data (omics/physiology/telemetry); relevant to this challenge only tangentially
  (crew health context), but unified with PSI in the same portal — expect judges to know it.
- OSDR data is **accessible via S3 and CLI on the Registry of Open Data on AWS** (their about page
  states this directly — useful precedent when arguing PSI cloud access).

---

## 4. Secondary sources worth citing in the dashboard

| Source | URL | Use for |
|---|---|---|
| NASA "Space Station's Quest for the Secrets of Fire" (2022) | https://www.nasa.gov/humans-in-space/space-stations-quest-for-the-secrets-of-fire/ | One-paragraph result summaries per ACME experiment (BRE burned minutes without airflow in crew-vehicle atmospheres; CFI-G produced cool flames of gaseous fuels with no enhancements; E-FIELD demonstrated emission reduction via electric fields; Flame Design quasi-steady non-premixed spherical flames; s-Flame growth/extinction data) |
| E-FIELD Flames investigation page | https://science.nasa.gov/biological-physical/investigations/e-field-flames | Electric-field details: up to 10,000 V between burner and mesh electrode; ion-driven wind; measurements of ion current, flame size/structure/temperature/soot/stability |
| Combustion Science discipline page | https://science.nasa.gov/biological-physical/focus-areas/combustion-science/ | Discipline framing + publication lists |
| NASA Glenn ACME Task Book (E-FIELD first phase) | https://taskbook.nasaprs.com/tbp/tbpdf.cfm?id=11959 | E-FIELD numbers: 131 tests (>120 successful), 100% methane in 21/79 O2/N2 at 100 kPa, sweeps to −10 kV, peak ion current ~2–2.75 µA, distinct µg ion-current peak at saturation (unlike 1-g), peak ion current ≈ proportional to fuel velocity |
| NASA Glenn DAFT page | https://www1.grc.nasa.gov/space/iss-research/mwa/daft/ | DAFT purpose (P-Trak risk mitigation for SAME), ISS vs Shuttle particulate findings, larger on-orbit particle sizes |
| SAME Final Science Report (NIST mirror) | https://tsapps.nist.gov/publication/get_pdf.cfm?pub_id=904707 | SAME quantitative results: Table 1 geometric mean diameters (Kapton 80 nm → aged 155 nm; lamp wick 186 → 258 nm; silicone 189 → 352 nm; Teflon 170 → 228 nm), ISS optical vs STS ionization detector response differences, moment method |
| SAME-2 flight-vs-ground paper (DOI) | https://doi.org/10.2514/6.2013-3433 | Expedition 24 (Jul–Sep 2010) flight results vs ground tests |
| Spacecraft Fire Safety overview (2018) | https://ntrs.nasa.gov/citations/20180004258 | NASA-STD-6001 Test 1 framework, exploration atmospheres (30% O2/10.2 psia historical; future to 34% O2/8.2 psia), 15 cm pass/fail criterion |
| O2 partial pressure vs concentration (2016) | https://ntrs.nasa.gov/citations/20160001047 | Flammability is driven by O2 CONCENTRATION more than partial pressure; conservative-application rules |
| Fire safety tech development (2021) | https://ntrs.nasa.gov/citations/20210021318 | Normoxic habitat physics; EVA suit 4.3 psia/100% O2; pre-breathe table (10.2 psia 28% O2 → 3.5 h; 8.2 psia 34% O2 → 0.5 h); lunar-g priority gaps |
| Ignition delay in normoxic environments | https://ntrs.nasa.gov/citations/20110011524 | Ignition delay reduced ~27–30% in exploration atmospheres vs standard atmosphere (PMMA, FIST) |
| FM2 dataset/citation | https://ntrs.nasa.gov/citations/20240015307 | SIBAL fabric burns DOWNWARD in lunar-g (centrifuge + parabolic flight) where it self-extinguishes in 1-g; FM2 flies on CLPS mission CP-21; test atmospheres 21%/14.7 psi and 34%/8.2 psi |
| Artemis II smoke-alarm incident (April 2026) | https://aerospaceamerica.aiaa.org/artemis-ii-astronauts-praise-orion-capsule-reflect-on-mission-impact/ | "You want to get somebody's attention really quick — make the fire alarm go off in your spacecraft when you're still about 80,000 miles from home." — Reid Wiseman; alarm triggered automated ventilation/power shutdown; "tense for a few minutes" |
| Semantic Scholar API | https://api.semanticscholar.org/graph/v1/paper/search | Metadata enrichment (rate-limited: sleep ≥10 s between calls) |
| OpenAlex API | https://api.openalex.org/works | Free metadata enrichment, generous limits |
| ICES Digital Library | https://ntrs.nasa.gov + ICES proceedings | Every BASS/SAFFIRE/FLEX paper has an ICES conference version |

---

## 5. Competitor / prior-art snapshot (Nov 14)

- **Flaregrain** (Sparkline Foundry, Halifax local event): static evidence dashboard over the same
  24 PSI investigations; pre-generated model text filtered by a page checker; no live model, no
  server. https://jpss2004-bot.github.io/flaregrain/
- A second, thinner prototype also surfaced in search results (a static Next.js page recapping
  ACME's ">1,500 flames" count on a personal Vercel domain) — informational one-pager, no data
  product, no scenario layer. Treat both as prior art, not competitors.
- Generic SI-research tools (Elicit, SciSpace, Consensus, Scite, NotebookLM itself): paper-by-paper
  chat — none do domain-specific experiment schemas, scenario ranking by O2/pressure/gravity, or
  citation-linked experiment data views. **The intersection is empty — that is the moat.**
