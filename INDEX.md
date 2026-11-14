# 🚀 Flame in Freefall — Research Pack (MASTER INDEX)
Folder: `desktop/spaceapps-prep/` · Built Nov 2026 · Event: Nov 14–15 (NOW LIVE).

## 🆕 NotebookLM-SOURCES/ — the PPT-ready source pack (Nov 14)
Everything needed to generate the pitch deck with Gemini NotebookLM lives in `NotebookLM-SOURCES/`:
13 numbered markdown docs = 13 notebook sources. Upload the folder contents to NotebookLM,
then follow `NotebookLM-SOURCES/12-PRESENTATION-OUTLINE.md` to generate slides.
- `01-CHALLENGE-BRIEF.md` — challenge, objectives, the 24 PSI investigations, who made it
- `02-DATA-SOURCES.md` — PSI/OSDR/NTRS + all web sources with URLs + competitor intel
- `03-EXPERIMENT-DIGEST-SOLIDS-BASS.md` — BASS-II, flame spread, standards, suppression
- `04-EXPERIMENT-DIGEST-FLEX-ACME.md` — cool-flame discovery, BRE <25% O2 finding, ACME campaign
- `05-EXPERIMENT-DIGEST-SAFFIRE-DETECTION.md` — largest fires in space, SAME detection story
- `06-PARTIAL-GRAVITY-LUNAR-MARS.md` — lunar-g goldilocks zone, LUCI/FM2, bounding-panel spec
- `07-SCENARIOS-ATMOSPHERES.md` — normoxic curve, Moon 30% O2/10.2 psi, suit 4.3 psi, Test 1 rules
- `08-PHYSICS-PRIMER.md` — fire in freefall, explainer-grade
- `09-PROJECT-FLARE-PITCH.md` — our architecture, ranking engine, demo script
- `10-CITATIONS-MASTER.md` — every NTRS ID + URL, citation-ready
- `11-EARTH-APPLICATIONS.md` — water mist / detection / firefighter gear bonus
- `12-PRESENTATION-OUTLINE.md` — slide-by-slide PPT plan (12 slides + backup)
- `00-INDEX.md` — the pack's own reading order
- `VERIFICATION-REPORT.md` (repo root) — full verification pass: fact-check status, cross-doc
  consistency, gap-fills applied, challenge-objective coverage matrix, remaining open items.
NOTE: raw PDFs (research/papers/, research/metadata/) were archived OUT of this folder before the
git push — see `../spaceapps-prep-archive/` (sibling folder, not part of the repo). All paper
content is already distilled into the digests above.

## How to use this pack (Nov 13 evening, 30 min)
1. Read `RESEARCH-PLAN.md` → the syllabus.
2. Read `research/EXISTING-SOLUTIONS.md` → what exists, our gap, our pitch line.
3. Read `research/ARCHITECTURE.md` → THE SPEC. Build exactly this.
4. Read `research/BUILD-RUNBOOK.md` → print it, assign roles.
5. Skim PDFs in `research/papers/nasa-ntrs/` → start with BASS-II Summary Report & SAFFIRE docs & FLEX docs.
6. `research/BIBLIOGRAPHY.md` → what each paper is + why it matters + citation-ready refs for your submission page.

## Files
| File | Purpose |
|---|---|
| `RESEARCH-PLAN.md` | Experiment syllabus, physics, roles, timeline |
| `research/EXISTING-SOLUTIONS.md` | Landscape: PSI/OSDR/AWS open data, Elicit/SciSpace/etc., gap analysis + pitch-ready opportunity statement |
| `research/ARCHITECTURE.md` | Full build spec: system diagram, SQL schema, ranking rubric, SI layer rules, features→objectives map, API sketch, demo script, risks |
| `research/AUDIT.md` | Fact-check log: corrections applied + claim-by-claim provenance + Nov-13 verification checklist |
| `research/FEATURE-LADDER.md` | T0→T3 feature passports: what/why/how/deps/demo-beat/kill-order + build-order DAG + discipline list |
| `research/BUILD-RUNBOOK.md` | 48-hour minute-by-minute plan, scope tiers, submission checklist |
| `research/BIBLIOGRAPHY.md` | Curated citation list of our downloaded corpus |
| `research/collect-research.ps1` | Harvest script (NTRS API + arXiv + Semantic Scholar) |
| ~~`research/papers/*` · `research/metadata/*`~~ | **Archived Nov 14** → `../spaceapps-prep-archive/` (102 files, 335 MB). All paper content distilled into `NotebookLM-SOURCES/03–06`. |

## Key facts locked in so far
- Data source of record: **NASA PSI** (psi.nasa.gov; unified with OSDR Oct-2025; ~100+ investigations, ~30 TB; AWS Open Data registry listing exists).
- Official challenge **Resources drop Fri Nov 13** → re-verify targets then.
- Coverage audit per harvest output: challenge-named investigations in our PDF corpus = BASS-II ✓, SAFFIRE I–III + SAFFIRE-VI 2024 prelims ✓, SAME/SAME-R smoke family ✓, FLEX/FLEX-2 + cool-flame droplets ✓, ACME overview + BRE ✓, SoFIE ✓, coflow-liftoff set (SPICE/SLICE lineage) ✓, LUCI + FM2 + lunar/Martian-gravity flammability papers (2024–26) ✓, CIR/MDCA hardware ✓, NASA-STD-6001 flammability-limit framework ✓, water-mist suppression ✓.
 - NOT yet downloaded (grab manually Nov 13): E-FIELD Flames, DAFT/DAFT-2, SAME-R final report, BASS-II conference-paper series (PMMA-rod blowoff limits).
- Winning angles: (1) scenario ranking by planned atmospheres (Moon 30% O2/10.2 psi; suit 100%/4.3 psi), (2) citation-chip SI answers, (3) lunar-g bounding with E-FIELD caveat, (4) Earth applications bonus.
