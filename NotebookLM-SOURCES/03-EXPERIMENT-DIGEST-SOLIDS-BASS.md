# EXPERIMENT DIGEST — BASS-II, solids/flame spread, flammability standards & suppression

> Distilled Nov 14, 2026 from the actual NTRS PDFs (numbers verbatim from the papers).
> Companion docs: 04 (FLEX/ACME), 05 (SAFFIRE/detection), 06 (partial gravity), 07 (atmospheres).

---

## 1. BASS-II Summary Report (NTRS 20210011385) — the solid-fuel backbone

**The experiment:** *Burning and Suppression of Solids–II* — **126 solid-fuel
ignition/spread/suppression tests** in the Microgravity Science Glovebox (MSG) on ISS. Team: Olson,
Ferkul, Bhattacharjee, Miller, Fernandez-Pello, Link, T'ien, Wichman. NASA/TM-20210011385 (2021).

**Test envelope:** GN2 dilution took the 250-L working volume from ~21% O2 down to ~14% O2; flows
up to 55 cm/s. Fuels: PMMA rods 6.35–12.7 mm dia.; PMMA slabs 0.125–5 mm thick; SIBAL
cotton-fiberglass fabric 0.32 mm. Typical heat release <100 W.

**Headline findings:**
- **PMMA rods supported flame spread at 17.5% O2 in 0-g vs a 19% minimum in 1-g** — microgravity
  burns at lower oxygen than Earth.
- **"NASA Test 1 25-s ignition time may be too short for flammability test and so may be an
  ignition test."** Measured µg ignition delays reached **230 s** — ~10× the standard's igniter
  window.
- Quenching (low-flow extinction) boundary for thin fabric: **1–5 cm/s**; extinction velocity
  ≈1 cm/s for 100–300 µm fuels, ≈1.5 cm/s at 400 µm, 2.6–4 cm/s at 16% O2.
- Nomex (3 samples) **did not ignite**. Wax candle flames melted wax and **ejected burning
  droplets** — a distinct 0-g fire-hazard mode (molten material as an ignition/spread vector).
- Minimum flammability boundary at stretch rate 8–12 s⁻¹; pre-quench flame oscillations ~1.1 Hz.

## 2. The "Test 1 is not conservative" evidence chain (the dashboard's core prevention story)

Four independent NASA sources converge:

1. **Exploration-atmospheres study (NTRS 20080034883, NASA/TM-2008-215260):**
   > "The 1g ULOI and 1g MOC are found to be greater than those in 0g, by up to 4% oxygen mole
   > fraction, meaning that the fuels burned in 0g at lower oxygen concentrations than they did
   > using the NASA Standard 6001 Test 1 protocol."
   1-g vs 0-g ULOI/MOC (% O2): **Nomex 25.4/22 → 23/22** (14.7 psia); **Ultem 26.5/24 → 24/23**,
   **Mylar G 20.8/20 → 17/16** (10.2 psia) — Mylar's negative Oxygen Margin of Safety ≈ −4 points.
   Also: Test 1 limits are effectively set by **critical heat flux for ignition**, not true
   flammability limits; opposed spread is faster than concurrent over nearly the whole spacecraft
   ventilation range.

2. **ISS program summary (NTRS 20130000582, Motil & Urban):**
   > "Results to date indicate that Test 1 is not conservative, and materials can burn at lower
   > oxygen levels in microgravity than on Earth."
   Also: FLEX methanol burned stably at **12.5% O2 (1 atm)**; the NFPA portable-CO2-extinguisher
   standard is "not conservative enough for enriched O2... microgravity environment." And a
   suppression lesson: **a local N2 jet is inadequate — "the local jet entrains air and sustains
   the flame even when the ambient air flow is turned off."** Thick PMMA (an Orion/MPCV window
   candidate) ignited easily and burned well in air — JSC was surprised.

3. **ELSA apparatus paper (NTRS 20040084155, NASA/TM-2004-213114):**
   > "ignition delay times for characterization material PMMA are shown to decrease by a factor of
   > three at low stretch, demonstrating that ignition delay times determined from normal cone
   > tests significantly underestimate the risk in microgravity."
   ELSA stretch ≈ 4 s⁻¹ vs standard cone ≈ 33 s⁻¹; at low stretch +25 kW/m² raises PMMA burning
   rates an order of magnitude → **Test 2 (cone) is also non-conservative**.

4. **BASS-II (above):** spread at 17.5% O2 vs 19% in 1-g; ignition delays 230 s vs 25-s igniter.

**The modernization proposals (quotable fixes):**
- **NULP (NTRS 20150004099):** single statistical limit where ~1/3 of samples burn (1/e of a
  Poisson process), evaluated along the normoxic band (ppO2 2.6–3.1 psia); safe-use pressure =
  NULP + safety factor (~10 kPa); test materials ≤3 mm thick.
- **Narrow Channel Apparatus (NTRS 20140004923):** plates suppress buoyancy at 1 atm; NCA matches
  true µg results (MGLAB 4.5-s and NASA ZGF 5.2-s drop towers) for thin PMMA/cellulose — an
  Earth-based "µg-like" screening complement to Test 1.
- **Reduced-pressure ground tests (NTRS 20200000557):** dropping ambient pressure 20–30 kPa
  reproduces 0-g concurrent spread of 10-mm PMMA (140 mm in ~150 s at 100 kPa vs ~450 s at 40 kPa);
  PMMA flame surface ~2365 K, pyrolysis ~579 K.

**NASA-STD-6001 Test 1 mechanics (NTRS 20030053428 + 20130008174):** samples 5 cm × 33 cm; standard
chemical igniter 750 ± 50 cal, 25 ± 5 s; **pass = self-extinguish before 15 cm (6 in)** for ≥3
samples; MOC = highest passing O2. Operational stack: quantity exemptions (<0.1 lb / 10 in² in crew
compartments), firebreaks of 3-mil × 3-in aluminum tape every 12 in, container rules (sealed leak
≤1×10⁻⁴ cm³/s; vents <1% area with fine CRES/Ni screens), Nomex HT90-40 stowage fabric ≥7.2 oz/yd²,
and the **MAPTIS database: 85,000 test reports on >32,000 materials**.

## 3. Flammability vs gravity — the Nomex dataset (and an honest tension)

**Newest dataset (NTRS 20250010975, 2025, supporting the FM2 lunar experiment):** Nomex HT90-40
limiting oxygen concentrations at constant 8.2 psi:
> "LOC: 1G ~23% Oxygen, Lunar-G ~29% Oxygen, 0G ~38% Oxygen"

**⚠️ Interpretation care (show both readings in the dashboard):** higher LOC = harder to sustain
spread. Read literally, this says Nomex at 8.2 psia is *harder* to burn at lunar-g (29%) than at
1-g (23%) — while the FM2/Sacksteder–T'ien claim (doc 06) says the flammability O2 limit reaches a
*minimum* near lunar-g for some materials (SIBAL burns downward at lunar-g but self-extinguishes at
1-g), and BASS/2008 found µg burns at LOWER O2 than 1-g. These readings are not necessarily
contradictory — material, total pressure (14.7 vs 8.2 psia), flow, and spread direction all flip
the ordering — but they are exactly the kind of tension a good evidence dashboard must surface
rather than hide. The honest UI rule: show the number, the condition, and the source; never blend.

## 4. Suppression physics (FLEX companion data)

- **Helium vs CO2 at µg (NTRS 20040053504, 20040161185):** µg minimum O2 for combustion was **27%
  with CO2 diluent vs 35% with He** — flames actually spread *faster* with CO2 at µg (radiative
  re-absorption preheats the fuel). Yet **"helium is much more effective on a mass basis (by about
  11 times) at µg"** and is physiologically inert. Context: CO2 is the US-module ISS suppressant
  (crew must don breathing apparatus); Halon 1301 is banned for future vehicles (ozone protocols).
- **Water mist (NTRS 20040053582, STS-107 Mist, 32 tests):** suppression improves with water mass
  fraction (tested to 0.40) and smaller droplets, saturating around **10 µm** droplets; µg enabled
  uniform mist clouds suspended for minutes — impossible at 1-g.
- **Fine-water-mist extinguisher hardware (NTRS 20100001376):** water + N2 propellant in one tank
  → fully rechargeable, orientation-independent discharge (100% of contents at any tilt),
  <20 lb proof-of-concept, worked on open and baffled-enclosure fires. → the Earth-applications
  bonus card (doc 11).
- **Ventilation/geometry as suppression (NTRS 20150008962, 20205004657):** thin-fabric quench
  boundary **1–5 cm/s** (higher flow needed at lower O2); confinement non-monotonic — flame grows
  as inter-baffle gap shrinks to an **optimum ~4.0 cm**, then dies at **~1 cm** (oxygen starvation
  + heat loss); polished-Al baffles → fastest spread, polycarbonate → slowest.
- **Program framing (NTRS 20040161216):** "To date, there is no single fire extinguishing system
  that can address all possible fire situations in a spacecraft in an effective, reliable, clean,
  and safe way" — suppression must be validated at 0.01/0.16/0.38 g against cable, circuit-board,
  and cloth fires with obstructions and ventilation.

## 5. Flame-spread fundamentals (the predictive-modeling layer)

- **SSCE — first Shuttle combustion experiments (NTRS 19930011017):** opposed spread at 50% O2:
  0.358 / 0.454 / 0.547 cm/s at 1.0 / 1.5 / 2.0 atm; 0.092 cm/s at 35% O2, 1.5 atm. Model matched
  within ~5–20%.
- **Edges burn faster (NTRS 20060050783, STS-75):** edge flames beat the central flame up to
  5 cm/s imposed flow — free edges (hemmed fabric, cable ends) are a real materials issue.
- **Spot ignition becomes multi-flame (NTRS 20010074014):** a localized ignition immediately
  creates simultaneous upstream + downstream flame pairs — "a spot fire in µg is several fires."
- **Hidden ignition (NTRS 20040053565):** backside ignition significantly delayed; at 21% O2 the
  back face ignites only *after* laser termination — post-event monitoring matters.
- **IR thermography (NTRS 20130013793, 20120013117):** upstream gradient 53 K/mm vs downstream
  6.3 K/mm; IR-derived spread rates (7.6/8.2 mm/s) match video (7.4 mm/s); downstream heat flux
  climbs 1.2 → 5.2 W/cm² as flow goes 5 → 20 cm/s.
- **Extinction physics (NTRS 20070017909):** radiative extinction onset at ~1100 K; radiative loss
  scales with flame surface area, largely independent of flow rate.
- **Lunar scaling (NTRS 20210020516, "Fire on the Moon"):** buoyant convective speed U ~ g^½ — a
  1-cm engulfed burning sample: **~100 cm/s on Earth → ~40 cm/s on the Moon**; thermal-length
  speed U ~ g^⅓: 20 → 10 cm/s. Proposed CLPS payload: 10-L chamber, ~15 kg, 8 W continuous, test
  modes up to 34% O2 @ 0.558 atm. Cites the 2011 NRC decadal survey's high-priority recommendation
  for fire-safety research in space environments.
- **Historical root (NTRS 19880003138, NASA CP-2476, 1986 workshop):** the µg ambiguity stated at
  the field's birth — µg spread can be less (limited oxidant transport) or more (weak ventilation
  flows, melt expulsion, soot radiation) than 1-g; and the founding philosophy:
  > "Realism in the approach to material safety requires the adoption of a philosophy that
  > (1) an ignition source exists, and (2) any fire that starts shall be self-extinguishing within
  > a short distance."

## 6. SoFIE — the CIR's current tenant (2023–2025): the newest solid-fuel evidence

The same rack that hosted ACME now hosts **SoFIE (Solid Fuel Ignition and Extinction)** — a CIR
insert delivered on Cygnus NG-17, operating through Feb 2025, with **five sub-projects**: GEL
(Growth and Extinction Limits) first, then MIST; NCA and SMuRF planned next.

**SoFIE-GEL** (PI James T'ien, Case Western Reserve; NASA GRC Olson/Ferkul/Johnston; a
NASA–Roscosmos collaboration): first test **Jan 13, 2023**; ran through **Mar 7, 2024**. Bulk
**4-cm PMMA spheres** (large enough for a well-defined stagnation-flow region, small enough for the
CIR chamber; re-used ~3× each to minimize upmass). **17 samples, 54 tests, ~7 hours of cumulative
µg burning.** Results so far: extinction boundary map at 1 atm established; the high-speed **blowoff
limit** and the low-velocity **quenching limit** characterized; solid preheating's effect on
extinction quantified. Task-book framing matches our thesis:
> "Turning off flow circulation is the first line of defense to fight fire in spacecraft."

**SoFIE-MIST** (Material Ignition and Suppression Test; Berkeley PIs Fernandez-Pello & Gollner):
thermally-assisted burning of PMMA (12.7 mm samples) varying airflow, O2, pressure, and external
radiation. The headline finding (Dec 2024):
> "In normal gravity, the limit of the oxygen concentration at which materials are flammable is
> approximately 18%. We are finding that in the Space Station... it's about 15%."
> "We were expecting that it would be lower, but not that low." — A. Fernandez-Pello
And co-PI M. Gollner: "materials can burn in space that aren't able to burn on Earth, or that they
can sustain a flame for a longer period."

**Why FLARE needs SoFIE:** (a) it's the newest per-parameter dataset — flow × O2 × pressure ×
preheat — exactly what parameter intelligence ranks; (b) extinction boundary maps are the very
product our ranking engine scores; (c) it re-proves the "Test 1 is not conservative" chain with
2023–24 data — the risk is current, not historical.

Sources: science.nasa.gov SoFIE + SoFIE-GEL pages; NASA Task Book #17436 (T'ien, FY2025);
Berkeley Engineering news, Dec 9, 2024; NTRS 20200000361 (project overview).

## 7. Top quotables for slides
1. "Materials passed on Earth fail in freefall: 0-g burns at up to 4 points LOWER oxygen than
   NASA's own Test 1 protocol." (20080034883)
2. "BASS-II: PMMA spread at 17.5% O2 in space vs 19% minimum on Earth." (20210011385)
3. "The 25-second igniter window? Microgravity ignition took up to 230 seconds." (20210011385)
4. "Turning off the fan doesn't kill the fire — and a local N2 jet feeds it instead." (20130000582)
5. "At lunar gravity the ventilation-driven convection drops from 100 to 40 cm/s — fire physics
   you've never tested." (20210020516)
6. "Below ~1–5 cm/s airflow, thin-fabric flames quench on their own." (20150008962)
7. "SoFIE-MIST, 2024: the flammability limit on the Space Station is ~15% O2 vs ~18% on Earth —
   'we were expecting that it would be lower, but not that low.'" (Task Book #17436 / Berkeley)
