# BUILD RUNBOOK — Nov 14–15 execution plan (48h, no surprises)
Division of labor assumes 3-5 people. Print this. Follow it mechanically.

## Before kickoff (Nov 13 evening — legal, zero code)
1. Challenge page: read FULL statement + ALL linked resources (resources drop Nov 13 per page).
2. Curate target list: Top 12 investigations we will hand-verify (recommendation):
   BASS-II, FLEX, FLEX-2, CFI/CFI-G, SAFFIRE-I/II/III, SAME/SAME-R, ACME(BRE, E-FIELD), SPICE, SLICE.
3. Download PSI per-investigation datasets for those 12 (manual is fine) into /data/psi/.
4. Rehearse roles (data / AI / frontend / pitch) — cut scope decisions below are FINAL unless disaster.

## Scope tiers (decide at hour 16 checkpoint, not hour 40)
- T1 MUST-HAVE: 12 investigations fully in DB + ranked scenario table (ISS/Moon/Suit) + why-citations + investigation matrix + CSV export.
- T2 STRONG: Ask-FLARE chat with citation chips + parameter dot-plots (extinction/O2) + prevent/detect/suppress lenses.
- T3 WOW: lunar-g bounding panel + timeline strip + Earth-apps cards + CSV export of chart data.

## Nov 14
- H0–H1: Kickoff → repo init, env setup, scaffold app (Next.js + FastAPI), teams split repos/folders.
- H1–H4: DATA LEAD: schema DDL + registry rows for 12 investigations from NTRS/PSI metadata.
  AI LEAD: extraction prompt + JSON schema; run over our 75 NTRS PDFs (OpenAI/others API).
  FRONTEND: layout shell, scenario selector, table skeleton, design tokens.
  PITCH: script skeleton, collect assets (flame images from NTRS/PSI pages, cited).
- H4–H8: pipeline runs; data lead sanity-checks rows vs PDFs (manual verify flag); AI lead builds /rank + /ask backends behind fixtures.
- H8–H9: checkpoint — everyone reports blockers; cut T3 items if behind.
- H9–H12: wire frontend to real API: ranked view + matrix + filters. Sleep/rotate.

## Nov 15
- H13–H17: /ask chat streaming + citation chips; charts; phase lenses; data integrity checked end-to-end.
- H17–H19: CSV export + footer citations + "data status" badges (LUCI/FM2 = future).
- H19–H21: PITCH time: 90-sec video (screenrecord dashboard; 3 sentences per scene from ARCHITECTURE.md §9 script), slides (≤8).
- H21–H23: Full dry-run demo twice on projector: kill every false click; check chart legibility at distance.
- H23–H24: SUBMIT ALL REQUIRED FIELDS EARLY — video upload, project page, team page, links, local event deliverables. Do NOT leave submission after deadline pressure.

## Submission checklist (Space Apps rules)
- Public GitHub repo + README (stack, data sources, how to run, team roles, 1-paragraph "what it does" mapped to 3 challenge objectives).
- 2-min video per Space Apps rules, captions ON, demo hook in first 30s; check the CURRENT year's limits for max size/duration on the official submission page before recording.
- Project page: goals, how we used space data (say "PSI + NTRS + S2 metadata"), tools, libraries.
- List team members with roles; local event = Ahmedabad.
- Fairness/self-report pre-work answer: "Pre-event: research only per rules" (our docs folder = dated Nov ≤13, all research/reading — keep it that way and it's provable honest).

## Judge-pleasing micro-details
- Every AI sentence ends with citation chips → screenshot one for slide.
- "data_status" badges show we read the challenge (LUCI/FM2 future files = extra credit honesty).
- CSV export = judges can verify numbers against PSI directly.
- Rainy-day 1-slide fallback of static screenshots in case venue wifi dies.

## If you fall behind (triage order: kill from bottom)
1. Kill Earth-apps cards → 2. kill timeline strip → 3. kill bounding panel (keep placeholder static SVG) → 4. kill chat SSE (pre-written answers for 5 planned questions). NEVER kill: ranked view, citations, matrix.
