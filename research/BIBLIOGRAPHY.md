# BIBLIOGRAPHY — curated guide to the downloaded corpus (75 NTRS + 14 arXiv kept; 8 further arXiv PDFs marked `_CUT_OFFTARGET_` = deletable noise)
All NTRS items are NASA-authored technical reports = PUBLIC DOMAIN (use figures/text freely with attribution).
Every ID resolves: https://ntrs.nasa.gov/citations/{ID} · full manifest (query provenance): `metadata/manifest-ntrs.csv`

## 🔑 Read these 12 FIRST (highest yield for the project)
| # | ID | Why it matters |
|---|---|---|
| 1 | 20150023456 | **"Detailed Results from FLEX, Mar 2009–Dec 2011"** — FLEX crown jewel: droplet burning physics, cool flames discovery, suppression by CO2/He → the suppression backbone |
| 2 | 20210011385 | **BASS-II Summary Report** — solid flammability vs O2/flow/geometry; our Top-12 verify target |
| 3 | 20080034883 | **"Microgravity Flame Spread in Exploration Atmospheres"** — direct pressure/O2/velocity effects → THE scenario-engine physics anchor (Moon 30% O2/10.2 psi) |
| 4 | 20240007488 | **Preliminary Results from SAFFIRE-VI (2024)** — newest large-scale fire data, beyond most teams' scope |
| 5 | 20250010653 | **LUCI: Flammability Results from a Rotating Sounding Rocket (2025 NTRS entry)** — partial-g flammability results *published as paper*; PSI dataset status TBD. The challenge text's "no partial-g combustion data" holds only for PSI datasets, not NTRS papers — we mined the gap. Validate contents before citing numbers. |
| 6 | 20260000646 | **"Material Flammability at Lunar and Martian Gravity" (2026 NTRS entry)** — freshest partial-g evidence; validate contents before citing numbers. |
| 7 | 20240008623 | **FM2: Flammability of Materials on the Moon** (+ sibling 20240015307) |
| 8 | 20150004099 | **NASA-STD-6001 Test 1 with Normoxic Upward Limiting Pressure** — the official flammability standard framework |
| 9 | 20200000361 | **SoFIE project overview (ISS)** — solid fuel ignition/extinction; active hardware lineage |
| 10 | 20130000422 | **SAME-2 particle morphology/size** — detection backbone (smoke particle stats) |
| 11 | 20170009141 | **BRE emulation in microgravity** — material flammability from gas burners (ACME-crossover) |
| 12 | 20100001376 | **Fine-Water-Mist multiple-orientation extinguisher** — Earth-applications bonus card |

## Corpus by experiment family (rest of the NTRS set)
- **FLEX/cool-flame droplets**: 20090014812 (MDCA hardware), 20130014061 (methanol/O2-inert), 20205008449 (inert gas effects on cool flames), 20160000344, 20170000666 (Burke-Schumann dual flame), 20150018397 (n-heptane cool-flame regime)
- **SAFFIRE line**: 20170001636 (objectives/development), 20170000230 (operation status), 20240002981 (SAFFIRE-VI sibling)
- **ACME/CIR hardware**: 20210015913, 20220015583, 20210022542 & 20220007191 & 20220005205 (gaseous flames on ISS), 19980169294 + 20020081329 + 20030032248 (CIR & MDCA engineering trio), 20160010073 (BRE concept)
- **Smoke detection**: 20070031686 (next-gen detectors), 20040053578 ("Smoke": particulate characterization), 20140006585 + 20140006579 (evaluation of low-gravity smoke particulate), 20190032657 (spacecraft airborne particulate characterization)
- **Flammability standards/limits**: 20030053428 (hazard control), 20040084155 (new microgravity test method)
- **Flame spread core**: 20205004657 (confinement), 20140004923 (narrow channel PMMA opposed), 20200000557 (buoyancy vs concurrent thick PMMA — 1g-vs-µg bounding!), 20040053557 (extinction criteria), 20070017909 (radiant extinction spheres), 19930011017 (reduced gravity opposed), 20040053516 (transport/chemical), 20060050783 (free edges), 20130013793 + 20120013117 (IR analysis cellulose), 20010074014 (ignition/transition/spread), 20150008962 (composite fabric low-speed), 20040053565 (localized ignition), 20130013749 (large-scale env characterization)
- **Soot/diffusion flames (1g-µg comparisons)**: 20140017780, 20150002322, 20150011070, 19970020584, 19970028635, 20000030722, 20040053577, 19960008435
- **Other edge**: 19880003138 (classic Spacecraft Fire Safety), 20040053504 (microgravity combustion workshop), 20040053589 (magnetic-field diffusion flames), 20140006584 + 20130008174 (unmanned-vehicle material flammability tests), 20050215648 (hardware enabling), 20130000582 (ISS experiment overview), 20040161185 (exploration research posters)
- **Noise (sifted from keyword matches)**: 20220014681 (SAGE stratospheric smoke — atmospheric science, not spacecraft), 20130000582-adjacent non-combustion items; low priority.

## AI/Engineering papers (arXiv, in `papers/arxiv/`)
Key picks:
- 2005.11401 — RAG (Lewis et al.): the baseline for the SI layer
- 2310.11511 — Self-RAG: self-reflective retrieval → supports our refusal + citation rules
- 2308.15363 — Text-to-SQL Empowered by LLMs (benchmark): grounding for our SQL hybrid lane
- 2208.10099 — Recent Advances in Text-to-SQL (survey)
- 2406.10833 — A Comprehensive Survey of Scientific LLMs — read before writing the SI prompt design
- 2507.10897 — LLMATCH: LLM schema matching — directly supports our structured extraction
- 2308.02443 — AI Literature Review Suite
- 2411.18583 — Automated Literature Review via NLP + RAG
- 2410.12601 — CCSBench: evaluating LLM scientific-document summarization (links to our eval harness)
- 2207.01888 — Keyword extraction in scientific documents
- 2505.18929 — Meta-aware text-to-SQL
- 2601.07528 — From RAG to Agentic RAG (faithfulness patterns)
Files prefixed `_CUT_OFFTARGET_` = query-harvest noise (math/other fields) → delete or ignore, they were auto-marked.

## Known gaps (fix on Nov 13 with resources drop)
- E-FIELD Flames and DAFT/DAFT-2 papers are NOT in the corpus (the "Electric-Field" query returned a magnetic-field proxy instead — 20040053589). Grab both manually from NTRS/PSI on Nov 13; they matter for the bounding panel (E-FIELD = partial-g proxy; DAFT = detection lineage).
- Semantic Scholar API enrichment hit 429 rate limits → do one manual pass on s2/OpenAlex later OR slower retry (sleep 10s); optional.
- BASS-II conference-paper set (Ferkul/Olson blowoff-limit series, e.g. 20160000593) not downloaded due to score-dedup — grab manually if we need deeper PMMA-rod numbers.
- SAME-R final report & DAFT papers: take from the official challenge Resources list when they go live Nov 13.

## How to cite in your submission page (pattern, still legal to use right now)
"BASS-II Summary Report (NASA TM-2021-...), NASA NTRS, ID 20210011385" — the dashboard must show at least experiment + report + page for every claim.
