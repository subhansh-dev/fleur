# CHALLENGE BRIEF — "Flame in Freefall: SI-Powered Fire Safety Insights from Microgravity Combustion Data"

> NASA Space Apps Challenge 2026 · November 14–15 · Official challenge source:
> https://www.spaceappschallenge.org/2026/challenges/flame-in-freefall/
> Compiled Nov 14, 2026 from the official challenge page, the official challenge explainer video,
> and NASA web sources. All factual claims carry a source.

---

## 1. What the challenge asks (verbatim essence)

Build an interactive, super intelligence (SI) powered dashboard that **summarizes, ranks, and
interprets** decades of NASA microgravity combustion results so they can **inform fire safety for
human space exploration** — Moon and Mars missions.

The data lives in NASA's **Physical Sciences Informatics (PSI)** database — the official data
source of record for this challenge.

### The three explicit objectives (from SME Xiaoting Miao, Case Western Reserve University, in the official challenge video)

1. **Identify** investigations most relevant to the fire-safety needs of habitable crew
   environments.
2. **Extract data** that supports predictive modeling of flammability and fire scenarios in space
   exploration.
3. **Highlight research** that informs the development of next-generation fire-safety controls and
   equipment.

### Challenge add-on (Earth applications bonus)

The dashboard could also address applications of PSI data to fire safety **on Earth**. Named
examples in the official video: fine-water-mist extinguishers developed for the ISS; NASA-derived
improvements in industrial smoke detection and firefighter gear (protective clothing, air tanks).

---

## 2. Who made the challenge (authoritative voices — cite them)

| Person | Role | What they said that matters |
|---|---|---|
| **Tracy Prater** | Program scientist for physical sciences, NASA HQ | Framing: "Imagine you're on a mission 239,000 miles from Earth... and you hear a fire alarm." Lunar habitats will have **increased oxygen levels** (to mitigate decompression sickness / enable frequent EVAs) — this enhanced-O2 + partial-gravity combination has direct flammability implications. Data informs fire-safety protocols, suppression-system design, and material screening. |
| **Yichen Alice Chen** | Director, Lasers & Flames group, UC Irvine; challenge SME | Microgravity flame physics explainer: candle flame → spherical, soot-free, blue in µg; E-FIELD Flames ion-driven wind reshapes flames; BASS-II acrylic rod burning in fan-driven flow; BRE porous burner for flammability/extinction in low gravity. |
| **Shubha Yusen** | Lead scientist for PSI, NASA Marshall | **PSI walkthrough: psi.nasa.gov → Combustion Science → 24 investigations with 12 TB of data.** Each investigation page: overview + objectives + approach + left-side folders with scientific data sets, documents, and publications (blue links with DOIs). |
| **Xiaoting Miao** | Associate professor, Case Western Reserve University; challenge SME | Read out the three objectives verbatim (Section 1 above). |

Official challenge explainer video (use this URL directly in NotebookLM):
https://www.youtube.com/watch?v=AVuEiKxOpc0

---

## 3. Key numbers the challenge text itself provides (defensible, cite as "challenge text")

- **Moon Base / pressurized rover target atmosphere:** ≥30% O2 at ≤10.2 psi
- **Spacesuit (EVA):** 100% O2 at 4.3 psi
- **CFI-G** ran the highest-O2 microgravity tests: up to **85% O2**
- **E-FIELD Flames** is suggested as a partial-gravity mimicry probe
- PSI has **no partial-gravity combustion datasets** (challenge text claim — TRUE for PSI datasets;
  NTRS has partial-gravity *papers*, see 06-PARTIAL-GRAVITY doc)
- **Rocket combustion is explicitly out of scope**
- Hardware groupings matter: ACME experiments share the Combustion Integrated Rack (CIR);
  FLEX/FLEX-2/CFI share the Multi-User Droplet Combustion Apparatus (MDCA) in CIR;
  BASS/BASS-II/SPICE/SLICE share the MSG (Microgravity Science Glovebox) with SPICE's fan-driven flow duct
- Target audience (challenge text): professors, graduate/undergraduate students, aerospace
  researchers and engineers

---

## 4. The 24 PSI combustion investigations (official NASA list)

Source: NASA PSI Investigations by Research Area page (nasa.gov, updated) + PSI walkthrough video.

**Flight investigations (ISS / Cygnus free-flyer / commercial cargo):**

| # | Investigation | Platform | Fire-safety phase |
|---|---|---|---|
| 1 | ACME BRE (Burning Rate Emulator) | ISS/CIR | Prevention (material screening) |
| 2 | ACME CLD Flame (Coflow Laminar Diffusion Flame) | ISS/CIR | Prevention/modeling |
| 3 | ACME E-FIELD Flames | ISS/CIR | Prevention/partial-g probe |
| 4 | ACME s-Flames (Spherical Diffusion Flames) | ISS/CIR | Modeling/extinction |
| 5 | BASS (Burning and Suppression of Solids) | ISS/MSG | Prevention + suppression |
| 6 | BASS-II | ISS/MSG | Prevention + suppression |
| 7 | CFI (Cool Flames Investigation) | ISS/MDCA | High-O2 environments |
| 8 | DAFT/DAFT-2 (Dust & Aerosol Measurement Feasibility Test 1/2) | ISS | Detection |
| 9 | FLEX (Flame Extinguishment Experiment) | ISS/CIR-MDCA | Suppression |
| 10 | FLEX-2 | ISS/CIR-MDCA | Suppression |
| 11 | SAFFIRE-I | CRS OA-6 (Cygnus) | Prevention at scale |
| 12 | SAFFIRE-II | CRS OA-5 (Cygnus) | Prevention at scale |
| 13 | SAFFIRE-III | CRS OA-7 (Cygnus) | Prevention at scale |
| 14 | SAME (Smoke Aerosol Measurement Experiment) | ISS/MSG | Detection |
| 15 | SAME-R (SAME Reflight) | ISS/MSG | Detection |
| 16 | SLICE (Structure and Liftoff in Combustion Experiment) | ISS/MSG | Flame stability |
| 17 | SPICE (Smoke Point in Coflow Experiment) | ISS/MSG | Soot/detection |

**Ground-based investigations using PSI data:**

18. Quantitative Studies of Cool Flame Transitions at Radiation/Stretch Extinction Using
    Counterflow Flames (ground)
19. Utilization of the SAME Data for Advanced Modeling and Simulation of Smoke Generation in
    Micro-Gravity (ground)

*(The PSI walkthrough video says "24 investigations, 12 TB"; NASA's research-opportunity table lists
25 combustion entries including ground studies. Use "24 flight-relevant PSI investigations, ~12 TB
in Combustion Science; PSI overall hosts 100+ investigations across six disciplines, ~30 TB" —
both are NASA-sourced numbers, cite context.)*

PSI-101 = SAME-R (confirmed dataset page: https://psi.nasa.gov/physci/repo/data/investigations/PSI-101 —
includes "SAME-R_Final_Report.pdf" and per-test folders with dates/inlet velocities/aging times).

---

## 5. The judging-relevant framing

- The dashboard must be **interactive**, not a slide-show of papers.
- Every interpretive claim should trace to an experiment/report (the challenge is about *trustworthy
  insight extraction from data*, not chat-with-PDF).
- "Rank" is an explicit verb — a transparent ranking engine over the 24 investigations is a
  first-class feature, not a bonus.
- Earth applications is an explicitly named bonus (Section 1 add-on).

## 6. Reality checks (Nov 14)

- Official Resources list dropped Nov 13 on the challenge page (10 resources per HackAthlone mirror;
  includes an explainer video) — the team must reconcile targets against it.
- PSI has **no documented public API** (third-party challenge trackers note this) — plan for manual
  per-investigation downloads; NTRS has a real JSON search API
  (`https://ntrs.nasa.gov/api/citations/search`).
- At least one rival team (Flaregrain, Space Apps Halifax) shipped a static evidence dashboard over
  the same 24 investigations: https://jpss2004-bot.github.io/flaregrain/ — their copy is static
  (pre-generated model text, no live model). Differentiation: **live SI, scenario ranking with
  explainable rubric, partial-gravity bounding, citation-or-no-render guardrails.**
