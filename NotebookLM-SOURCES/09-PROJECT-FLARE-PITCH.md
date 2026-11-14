# PROJECT FLARE — the pitch, the architecture, the demo (our own plan, synthesized)

> Codename: **FLARE — Freefall Lab Analysis & Ranking Engine**. This doc merges the team's
> ARCHITECTURE.md, FEATURE-LADDER.md and EXISTING-SOLUTIONS.md into one NotebookLM-ready narrative.
> Full engineering detail remains in `research/ARCHITECTURE.md` (SQL schema, API sketch).

---

## 1. Vision (one paragraph, verbatim-usable)

FLARE ingests NASA PSI (experiment datasets + metadata) and NTRS (full texts of every related
report/paper), normalizes them into one structured evidence graph, then runs an SI layer that
**summarizes, ranks, and interprets** every investigation against the fire-safety needs of crewed
environments — ISS, Moon Base (30% O2/10.2 psi), pressurized rovers, spacesuits (100% O2/4.3 psi),
Mars transit — and renders it in a dashboard where **every AI claim is click-through-able to its
source experiment or PDF page**.

## 2. The gap we fill (market)

- PSI stores the data. NTRS stores the papers. **Nothing connects them to decisions.**
- Every existing SI-research tool (Elicit, SciSpace, Consensus, Scite, NotebookLM, ResearchRabbit)
  is a **generic paper tool** — no domain experiment schema, no scenario ranking by
  O2/pressure/gravity, no citation-linked experiment data views.
- Known rival (Flaregrain, Halifax) is a **static** copy — pre-generated text, no live model.
- Opportunity statement (use verbatim): "Fifty years of microgravity combustion experiments, ~30 TB
  of open data, and not ONE tool that ranks and interprets them for the fire-safety decisions of the
  next crewed missions. PSI stores the experiments; NTRS stores the papers; SI can finally connect
  them — citation-grounded, scenario-ranked, decision-ready."

## 3. The four layers

1. **Data layer** — investigation registry over the 24 PSI combustion investigations + test-level
   evidence rows extracted from NTRS PDFs (fuel type/geometry, O2%, pressure, flow speed, gravity
   level, extinguishant, key result). Each row flagged `verified: llm_manual | llm_auto` —
   honesty about pipeline quality is a judge-visible feature.
2. **SI layer** — two modes, both citation-grounded-or-refused:
   - *Ranked Brief* (pre-computed): per-environment ranked list + extractive summaries.
   - *Ask-FLARE* (interactive): routed question → filters + text retrieval → ANSWER + EVIDENCE[].
     **Render rule: a claim without ≥1 citation span does not render** (UI shows 🔗 chips).
     Refusal template for out-of-corpus questions (rocket combustion is out of challenge scope).
3. **Dashboard layer** — scenario selector (ISS / Moon Base / Rover / Suit / Mars transit); ranked
   evidence list with score breakdowns; investigation comparison matrix; test-parameter explorer
   with CSV export; partial-gravity **bounding panel** (every curve labeled "bounded interpolation,
   not measurement"); Prevent/Detect/Suppress phase lenses; Earth-applications page; timeline strip.
4. **Pitch layer** — 90-second demo script (below) mapped to the challenge's three objectives.

## 4. The ranking engine (explainable, not vibes)

Score(i, E) = w1·Phase match (prevent/detect/suppress relevance) + w2·Environment match (O2/pressure
proximity of tested conditions to scenario E) + w3·Data openness (PSI downloadable > partial > none)
+ w4·Recency & scale (flight > ground) + w5·Direct applicability (LLM-rated, how directly tested
conditions/materials map to E). The `why_ranked` justification is LLM-written and MUST cite the
investigation + readable quote. Score breakdown bars are shown in the UI.

## 5. Demo script (90 seconds, projector-ready)

1. **Hook:** "Artemis II: smoke alarm 80,000 miles from home, April 2026. What does 50 years of
   NASA fire data say?" (timeline beat)
2. Click **Moon Base** scenario → ranked investigations with why-citations.
3. Open #1 (BASS-II) → matrix view → extinction column highlighted at 30% O2 extrapolation (labeled).
4. **Ask-FLARE:** "What suppression method is proven at low flow in microgravity?" → grounded
   answer with 3 citation chips.
5. **Bounding panel reveal:** lunar-g interpolated envelope + E-FIELD-proxy caveat + LUCI/FM2
   partial-g paper anchors.
6. Earth-apps beat → fine water mist. Close: **"PSI stores data — we deliver decisions."**

## 6. Feature → objective mapping (judges grade against the three objectives)

| Feature | Objective it hits |
|---|---|
| Scenario selector + ranked evidence list | 1 — identify investigations relevant to habitable crew environments |
| Test-parameter explorer + CSV export | 2 — extract data for predictive modeling |
| Insight cards, comparison matrix, detection/suppression lenses | 3 — highlight research for next-gen fire-safety controls |
| Earth-applications page | challenge add-on (water mist, smoke detection, firefighter gear) |
| Citation chips + verified flags + refusal template | trust layer that no rival has |

## 7. Risks & mitigations

| Risk | Mitigation |
|---|---|
| PSI has no public API | Manual per-investigation downloads; NTRS API proven; pre-curated corpus |
| LLM hallucination | Citation-or-no-render rule; hand-verified Top-12 rows |
| 48 h time | Pre-modeled schema + pre-downloaded corpus + runbook |
| No partial-g PSI datasets | Honest bounding panel + NTRS partial-g papers (LUCI, FM2, 2026 study) as anchors |
| Mars transit atmos numbers unverified | Label ASSUMED; verify or drop before submission |
