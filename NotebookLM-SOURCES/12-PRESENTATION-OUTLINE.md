# PRESENTATION OUTLINE — the PPT skeleton (feed this + docs 01–11 to NotebookLM/Gemini)

> ⚠️ **SUBMISSION DEMO FORMAT — OFFICIAL RULES (verified Nov 14, 2026 from Space Apps Judging
> Guidelines + Project Submission Guide):**
> - The Demo must be **slides (MAX 7, including title & ending) OR video (MAX 30 seconds)**.
> - Judges **stop reviewing at slide 8 / 31 seconds**. >7 slides = NOT eligible for Global Judging.
> - Deck must be in **English**, hosted publicly (Google Drive/Slides, YouTube) — the portal takes
>   only a LINK, never an upload. Test the link in a private/incognito window.
> - The Demo must name: team name, project name, challenge selected, team members.
> - **AI usage must be declared**; AI-generated images/videos need a visible watermark.
> - Judging criteria: Impact · Creativity · Validity · Relevance · Presentation.
>
> **THE 7-SLIDE SUBMISSION DEMO (this is what we submit):**
> 1. **TITLE** — "FLARE — Freefall Lab Analysis & Ranking Engine" · Challenge: Flame in Freefall ·
>    team name + members · hook: "The fire alarm went off 80,000 miles from home" (Artemis II, 2026).
> 2. **THE PROBLEM** — PSI = 24 combustion investigations, 12 TB; 50 years of data, no decision
>    tool; Artemis II shows what's at stake. (docs 01–02)
> 3. **WHAT THE EVIDENCE SAYS** — 5 killer facts w/ citation chips: PMMA 17.5% O2 in µg vs 19% on
>    Earth (BASS-II); ignition delays 230 s vs 25-s Test 1 window; cool flames ~700–780 K
>    invisible; SAFFIRE-VI alarm at 981 s after CO2 8,539 ppm; SIBAL burns downward at lunar-g but
>    self-extinguishes at 1-g (FM2). (docs 03–05)
> 4. **WHAT WE BUILT** — FLARE: scenario engine (ISS/Moon Base ≥30% O2 @ ≤10.2 psi/rover/suit
>    100% @ 4.3 psi) + explainable 5-factor ranking + citation-or-no-render SI layer. (doc 09)
> 5. **HOW WE USED NASA DATA** — PSI investigations + NTRS papers → evidence graph → rankings;
>    investigations named (BASS-II, FLEX, SAFFIRE, SAME, SoFIE); AI usage declared. (doc 02)
> 6. **THE DEMO** — wireframe/screenshots: ranked Moon-Base scenario table, parameter dot-plots,
>    Ask-FLARE answer with citation chips. (doc 09 §6)
> 7. **CLOSE** — Earth applications (water mist, particle-aware detection, firefighter gear);
>    recap 3 objectives → 3 features; team + GitHub link (github.com/subhansh-dev/fleur). (docs 11, 09)
>
> The 12-slide plan below is the EXTENDED pitch version — keep it for local-event presentation or
> Q&A depth, but the SUBMITTED Demo link must be the 7-slide deck above.

> Purpose: this is the slide-by-slide plan for the pitch deck. Each slide lists: headline, the 2–3
> claims to make (with which source doc backs them), and the visual to generate.
> Deck length: 12 slides + backup. Time budget: 3 min pitch or 90-sec video cut (marked ⏱).

---

### Slide 1 — HOOK ⏱
- Headline: "The fire alarm went off 80,000 miles from home."
- Claims: April 2026, Artemis II, smoke detector tripped, automated ventilation+power shutdown,
  "tense for a few minutes" (doc 02 §4, doc 09 §5).
- Visual: Orion capsule silhouette + alarm glyph + distance counter.

### Slide 2 — THE PROBLEM ⏱
- Headline: "50 years of NASA fire data exists. No tool turns it into fire-safety decisions."
- Claims: PSI = 100+ investigations, ~30 TB; Combustion Science = 24 investigations, 12 TB;
  NTRS stores the papers; nothing ranks or interprets either for crewed-environment decisions
  (doc 01, doc 02).
- Visual: data-pile vs. decision gap diagram.

### Slide 3 — THE CHALLENGE (mirror the judges' own words)
- Headline: the three official objectives (doc 01 §1).
- Visual: 3 numbered chips. Keep NASA's wording.

### Slide 4 — WHAT FIRE BECOMES IN FREEFALL
- Headline: "On Earth fire is a teardrop. In freefall it's a blue sphere that can whisper itself out."
- Claims: spherical blue soot-free flames; no buoyancy convection; self-extinguishing cool flames;
  µg smoke particles ~2× Earth size (doc 08).
- Visual: teardrop vs sphere flame comparison.

### Slide 5 — MEET THE EXPERIMENTS (the evidence graph)
- Headline: "24 investigations. Three shared hardware families. One triad: Prevent · Detect · Suppress."
- Claims: ACME family on CIR (BRE, E-FIELD, s-Flames, CLD); droplet family on MDCA (FLEX, FLEX-2,
  CFI); solids family on MSG (BASS, BASS-II, SPICE, SLICE); SAFFIRE I–III on Cygnus; SAME/SAME-R/
  DAFT for detection (doc 01 §4, docs 03–05).
- Visual: taxonomy tree colored by prevent/detect/suppress.

### Slide 6 — FLARE: WHAT WE BUILT
- Headline: "An SI dashboard where every claim is click-through-able."
- Claims: 4 layers (data / SI / dashboard / pitch); citation-or-no-render rule; verified flags
  (doc 09 §3).
- Visual: system diagram (mermaid-style boxes).

### Slide 7 — THE RANKING ENGINE (differentiator #1)
- Headline: "Not vibes — an explainable rubric."
- Claims: 5-factor score (phase match, environment match, data openness, recency, applicability);
  why_ranked always cites; score-breakdown bars in UI (doc 09 §4).
- Visual: stacked score bars for a sample ranking.

### Slide 8 — SCENARIO: MOON BASE (the money slide) ⏱
- Headline: "Moon habitats: ≥30% O2 at ≤10.2 psi — more flammable than anything we've flown."
- Claims: normoxic curve; O2 CONCENTRATION (not partial pressure) drives flammability — ISS data
  cannot clear materials for Moon atmospheres; ignition delay drops ~27%; pre-breathe economics
  (3.5 h → 0.5 h) drive the O2 enrichment (doc 07).
- Visual: normoxic curve with the four operating points annotated.

### Slide 9 — SCENARIO: THE PARTIAL-GRAVITY GOLDILOCKS ZONE (differentiator #2)
- Headline: "Lunar gravity can be worse than Earth OR microgravity."
- Claims: FM2 — SIBAL burns downward in lunar-g but self-extinguishes in 1-g; LUCI rocket results;
  2026 lunar/Martian-gravity paper; PSI has NO partial-g datasets → our honest bounding panel
  labeled "bounded interpolation, not measurement" (doc 06).
- Visual: 1g / lunar-g / µg flammability envelope with error bands.

### Slide 10 — LIVE SI: ASK-FLARE (differentiator #3 vs static rivals)
- Headline: "Ask it anything — it answers only with citations."
- Claims: grounded Q&A over evidence graph; refusal template for out-of-scope; vs Flaregrain-style
  static copies (doc 09 §2, doc 01 §6).
- Visual: screenshot-style chat mock with 3 citation chips.

### Slide 11 — EARTH BONUS ⏱
- Headline: "The research protects astronauts — and firefighters at home."
- Claims: fine water mist extinguishers; particle-size-aware smoke detection; firefighter gear
  (doc 11).
- Visual: 3 icon cards.

### Slide 12 — CLOSE ⏱
- Headline: "PSI stores the data. We deliver the decisions."
- Claims: recap 3 objectives → 3 features; call to action (doc 09 §5).
- Visual: one-line recap + team.

### Backup slides (not in the 3-min cut)
- B1: Full investigation matrix (fuels × O2 × flow × headline result) — from docs 03–05 tables.
- B2: NASA-STD-6001 Test 1 framework + 15 cm pass/fail (doc 07 §6).
- B3: SAME particle-size table (doc 03–05 detection section).
- B4: Data sources & citation list (doc 02 + doc 10).

## Generation notes for NotebookLM/Gemini
- Style: dark space theme, one claim per line, citation chips rendered as [source] superscripts.
- Keep every number EXACTLY as written in the source docs — no rounding, no embellishment.
- The ⏱ slides are the 90-second video script (narrate the headline + first claim of each).
