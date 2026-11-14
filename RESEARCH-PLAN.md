# Flame in Freefall — Pre-Event Research Plan (100% legal, no code before Nov 14)

> Event: NASA Space Apps 2026, Nov 14–15 · Ahmedabad local event
> Challenge: Flame in Freefall — SI-Powered Fire Safety Insights from Microgravity Combustion Data
> Rule status: Researching, reading papers, downloading public data, and planning architecture is explicitly allowed. NO project code/building before Nov 14.

## 1. Data sources to explore (public, free)

- **NASA Physical Science Informatics (PSI)** — the official data source for this challenge
  - https://psi.nasa.gov
  - Focus areas: Combustion Science experiments on the ISS
  - NOTE: official challenge "Resources" list drops Nov 13 — re-check the challenge page for curated PSI sections
- NASA Technical Reports Server (NTRS) — https://ntrs.nasa.gov (papers + final reports for each experiment)
- NASA Space Apps challenge page — https://www.spaceappschallenge.org/2026/challenges/flame-in-freefall

## 2. The experiment syllabus (know these cold)

| Investigation | Rack/Hardware | Fuel | Topic | Fire safety angle |
|---|---|---|---|---|
| BASS / BASS-II | MSG flow duct | solids (fabrics, plastics) | burning + suppression of solids | flammability limits, suppression |
| SAFFIRE-I/II/III | Cygnus cargo (free-flying burn) | large solid samples | biggest microgravity fires ever | material flammability at scale |
| SAME / SAME-R | ISS | aerosols | smoke detector behavior in µg | detection |
| DAFT / DAFT-2 | ISS | dust | aerosol measurement (same instrument repurposed) | detection (weaker link) |
| FLEX / FLEX-2 | MDCA droplet rig (CIR) | liquid droplets (heptane, methanol...) | suppression by CO2/He dilution | suppression, flammability limits |
| ACME: BRE | CIR | gaseous | Burning Rate Emulator: material flammability in still air | material properties |
| ACME: CFI / CFI-G | MDCA | liquid/gas droplets | cool flames, up to 85% O2 | high-O2 environments (Moon base!) |
| ACME: E-FIELD Flames | CIR | gaseous | electric field effects on flames | partial-gravity mimicry |
| SPICE | MSG flow duct | solid+gas | smoke point in coflow | soot/detection |
| SLICE | MSG flow duct | solid+gas | structure & liftoff in coflow | flame stability |
| LUCI | (future) | — | Lunar-g combustion | NO PUBLIC PSI DATA YET |
| FM2 | (future) | — | Flammability of materials on Moon | NO PUBLIC PSI DATA YET |

Hardware groupings matter (challenge says so):
- ACME (6 experiments) = same modular hardware in Combustion Integrated Rack (CIR)
- FLEX, FLEX-2, CFI = droplets via MDCA in CIR
- BASS, BASS-II, SPICE, SLICE = MSG with SPICE's modular fan-driven flow duct

## 3. The physics to understand (light version)

- In microgravity: no buoyancy → no rising hot gases → flame becomes a spherical blue diffusion flame, sooty products stay near fuel, can self-extinguish (cool flames!)
- Flammability depends on: oxygen concentration ↔ pressure, materials, airflow
- Fire safety triad NASA uses: **Prevention → Detection → Suppression** (map every experiment to one of these; that's a natural dashboard taxonomy)
- Space environments compare:
  - Spacesuit: 100% O2 at 4.3 psi (pre-breathe to prevent decompression sickness)
  - Planned Moon base / pressurized rovers: likely ≥30% O2 at ≤10.2 psi → >40% more flammable than Earth air
  - Challenge hint: CFI-G ran the highest-O2 µg tests (up to 85% O2)
- Partial gravity: no PSI *datasets* yet, BUT our NTRS harvest surfaced **LUCI rotating-rocket flammability results (2025, ID 20250010653), FM2 papers (2024, IDs 20240008623/20240015307), and "Material Flammability at Lunar and Martian Gravity" (2026, ID 20260000646)** — the challenge brief's "no partial-g data" claim only holds for PSI; NTRS has partial-g *papers*. Mine these for the bounding panel (evidence that lunar-g flammability research is live + our knowledge base covers what the brief doesn't).

## 4. Papers / reports to read (search NTRS per experiment)

Priority order:
1. FLEX final report / papers — suppression by gas dilution, cool flames discovery
2. BASS-II final report — solid flammability thresholds vs O2/flow
3. SAFFIRE final reports — large-scale fire dynamics + detection
4. SAME-R final report — smoke particle size distributions (detector design)
5. ACME overview papers — span all 6 experiments, hardware reuse story
6. Spacecraft Fire Safety research reviews (such as work led by NASA Glenn) — best big-picture summaries

Bonus Earth-application angle: fine water mist extinguishers (ISS→Earth), smoke detection improvements, firefighter gear.

## 5. Architecture plan (paper only, build Nov 14+)

Target audience (from challenge): professors, grad/undergrad students, aerospace researchers/engineers.

Layers:
1. Data layer
   - Collect PSI experiment metadata into a structured schema:
     experiment | project (BASS, FLEX...) | rack | fuel type/shape/size | O2 %, pressure, flow speed | variables tested | sensors/measurements | key findings | source links (NTRS/PSI)
   - This schema IS the product's backbone. Design it on paper now.
2. SI layer (LLM/narrative engine)
   - Answers must CITE experiment + report. No uncited claims.
   - Suggested capabilities: natural-language query over the schema; summarization; comparison ("how did FLEX-2 differ from FLEX?"); ranking by relevance to a scenario (Moon base, rover, transit vehicle)
3. Dashboard layer
   - Filters: fuel type, O2 level, pressure, gravity level, Project/experiment, safety phase (prevent/detect/suppress)
   - Comparison views between investigations + within an investigation's test variables
   - "Insight cards": e.g. "At 30% O2 / 10.2 psi, BASS-II found X..."
   - Scenario picker: ISS / Moon Base / Rover / Spacesuit / Mars transit
   - Partial-gravity bounding view (µg vs 1g brackets)
   - Earth applications section (bonus)
4. Pitch layer
   - Demo hook: "Battery smokes on a 9-month Mars transit — what does 50 years of NASA fire data say?"
   - Map each dashboard feature to a bullet from 'Objectives' section of challenge (judges grade against this)

## 6. Team roles (agree now)

- [ ] Data lead — owns PSI download + schema cleaning during event
- [ ] AI lead — LLM pipeline + prompt engineering
- [ ] Frontend lead — dashboard UI
- [ ] Pitch lead — slides, demo script, video

## 7. Timeline (no code before Nov 14)

- Now → Nov 13: read papers, explore PSI, finalize schema + wireframes on paper, pick stack
- Nov 13: challenge resources drop — go through them + re-plan data targets
- Nov 14 AM: build data layer; PM: SI layer
- Nov 15 AM: dashboard + demo script; PM: rehearse pitch, submit video early

## 8. Do / Don't

DO: all research, dataset exploration, paper reading, architecture sketches, team planning
DON'T: write any project code, build components, or create repos before Nov 14
