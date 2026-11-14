# SCENARIOS & ATMOSPHERES — the physics backbone for ranking crewed environments

> This doc is the single source of truth for every scenario preset, every atmosphere number, and
> the flammability physics that justifies ranking. Every number is NASA-sourced with a link.

---

## 1. The scenario presets (challenge-anchored + NASA-anchored)

| Scenario | O2 % | Total pressure | Gravity | Source & defensibility |
|---|---|---|---|---|
| **ISS (nominal)** | 21% | 14.7 psia (101.4 kPa) | ~0 g | Shuttle/Mir/ISS have operated at sea-level-equivalent since Skylab. ISS worst-case data often quoted at 24.1% O2 / 14.7 psia due to sinusoidal O2 fluctuation around the 21% mean. |
| **Moon Base / pressurized rover** | ≥30% (challenge text) · up to 34% (NASA SEA) | ≤10.2 psia (challenge text) · 8.2 psia (34% O2 SEA point) | 0.165 g | Challenge text + Exploration Atmospheres Working Group (2004, 2012). |
| **Spacesuit (EVA)** | 100% | 4.3 psia | ~0–0.165 g | Challenge text; U.S. suits on ISS. |
| **Orion / transit vehicle** | normoxic band | 8.0–14.9 psia, ≤30% O2 (CEV/Orion spec); Altair lander ≤34% | ~0 g | NASA CEV/Orion design specs. |
| **Mars transit** | ~26%, ~8.2 psia | ~0 g | **ASSUMED from NASA literature — verify or drop before submission.** |

**Lunar surface gravity: 1.62 m/s² = 0.165 g** (Earth 9.81 m/s²).

---

## 2. The normoxic curve — why Moon habitats are more flammable

- Partial pressure of oxygen in spacecraft is controlled near **3.09 psia (0.21 atm)** — the
  "normoxic" equivalent of Earth air. Actual control band: **2.6–3.1 psia** (NASA).
- To hold ppO2 constant as pressure drops, **O2 fraction must rise**: 21% O2/14.7 psi ↔ 30% O2/10.2
  psi ↔ 34% O2/8.2 psi ↔ 100% O2/4.3 psi all sit near the same ppO2.
- **Why bother lowering pressure at all?** EVA pre-breathe times (NASA 2021 tech-dev report):
  - 10.2 psia / 28% O2 → **3.5 hours** pre-breathe
  - 8.2 psia / 34% O2 → **0.5 hours** pre-breathe
  - Surface operations with frequent EVAs strongly favor higher O2% / lower pressure — the Moon
    base economics are exactly why the flammability problem exists.

## 3. THE critical finding: oxygen CONCENTRATION is the fire driver, not partial pressure

Source: https://ntrs.nasa.gov/citations/20160001047 (and companion WSTF paper
https://ntrs.nasa.gov/citations/20160004937)

- Despite equivalent partial pressure, materials burn **more readily** at higher O2% / lower total
  pressure. Above ~41 kPa (6 psia): strong dependence on O2 concentration, little relation to total
  pressure.
- **Conservative-application rule (quote-ready):** "Lower O2% / higher P data cannot be conservatively
  applied to higher O2% / lower P environments despite equivalent partial pressures. Higher O2% /
  lower P data CAN be conservatively applied to evaluate the risk of lower O2% / higher P
  environments."
- Practical consequence for the dashboard: **ISS-atmosphere material data does NOT clear materials
  for Moon-base atmospheres.** This is the single most quotable physics fact for the Moon scenario.

## 4. Ignition gets faster too

- FIST apparatus tests (PMMA): ignition delay in exploration atmospheres (~58.6 kPa, 32% O2) is
  **reduced ~27%** vs standard atmosphere; minimum ignition delay along the normoxic curve is
  **~30% lower** than standard conditions.
  Source: https://ntrs.nasa.gov/citations/20110011524

## 5. Flame-spread scaling laws (for the predictive-modeling objective)

Source: NASA fire-safety tech development report https://ntrs.nasa.gov/citations/20210021318

- **Concurrent flame spread rate:** Vf ∝ O2 × flow velocity × P^0.5
- **Opposed flame spread rate:** Vf ∝ O2^0.9 × P^0.05
- The near-vertical MOC (Maximum Oxygen Concentration) lines vs pressure show **increasing oxygen
  has a far greater effect than increasing pressure**.
- Over virtually the entire spacecraft atmosphere/flow range, **opposed spread is faster** in
  microgravity (Kimwipes correlations, 2008-01-2055).
- Microgravity ULOI/MOC finding: materials burn in 0-g at **up to ~4% oxygen mole fraction LOWER**
  than the NASA-STD-6001 Test-1 1-g protocol would suggest — i.e., Test 1 limits are not conservative
  in 0-g for some fuels (Source: https://doi.org/10.4271/2008-01-2055).

## 6. The material-screening framework (how NASA says "flammable" or not)

- **NASA-STD-6001 Test 1** (Upward Flame Spread Test): conducted at the worst-case atmosphere the
  material will see; historically 30% O2 / 10.2 psia (shuttle pre-EVA atmosphere); future
  exploration atmospheres extend to **34% O2 / 8.2 psia**.
- **Pass/fail: a material fails if it burns more than 15 cm (6 inches).**
- Source: https://ntrs.nasa.gov/citations/20180004258
- Refinement (normoxic ULP concept): define a Normoxic Upward Limiting Pressure (NULP) per material
  along the constant-ppO2 band; add a safety factor ~10 kPa. Test thickest material at 3 mm to
  avoid confusing ignition limit with flammability limit.
  Source: https://ntrs.nasa.gov/citations/20150004099

## 7. Historical atmosphere table (timeline-strip content)

| Era | Atmosphere |
|---|---|
| Mercury/Gemini | 100% O2, 5 psia (pure-O2 era — Apollo 1 fire changed everything) |
| Early Apollo design | ~100% O2, 16.7 psia pre-launch |
| Skylab → Shuttle → ISS | 21% O2 / 14.7 psia (sea-level equivalent) |
| Shuttle pre-EVA | 30% O2 / 10.2 psia |
| CEV/Orion | 8.0–14.9 psia, ≤30% O2 |
| Altair lunar lander | ≤34% O2 |
| Planned lunar habitats/rovers (SEA) | 30–34% O2 at 8.2–10.2 psia |
| EVA suit | 100% O2 at 4.3 psia |

## 8. The partial-pressure fallacy (dashboard "insight card" material)

WSTF framing: "If the available oxidizer is the driver for combustion, then should flammability
for 30% O2/10.2 psi (ppO2 3.1) equal 100% O2/3.1 psi (ppO2 3.1)?" — **No.** Below ~6 psia total
pressure, MOCs and required oxygen partial pressures show increased total-pressure dependence;
required O2 partial pressure to sustain propagation **decreases** as total pressure drops —
increased flammability risk at low total pressure despite equivalent partial pressure.

## 9. Fire-safety triad mapping (NASA's own taxonomy)

**Prevention → Detection → Suppression.** Every experiment maps to one:
- Prevention: BASS/BASS-II, BRE, NASA-STD-6001 framework, material screening
- Detection: SAME, SAME-R, DAFT/DAFT-2, smoke particulate studies
- Suppression: FLEX/FLEX-2 (gas dilution), water-mist studies, BASS suppression tests

**Operational hard truths (from NASA 2021 gap list):**
- "Turning off forced air flow cannot be used as an extinguishment strategy."
- Lunar gravity changes fire-detection strategy depending on vehicle design.
- Current crew clothing is flammable even at ISS 21% O2/14.7 psia — enriched-O2 clothing (Gap
  2021-2906-TX06) is a named NASA capability gap.
- Astronauts never get to practice fire response with real hardware in the vehicle before flight
  (Gap 2021-2913-TX06).
