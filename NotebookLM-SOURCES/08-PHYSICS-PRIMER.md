# PHYSICS PRIMER — how fire behaves without gravity (explainer-grade, judge-ready)

> Sources: official challenge explainer video (NASA HQ + UC Irvine + MSFC + Case Western SMEs),
> NASA "Space Station's Quest for the Secrets of Fire" (2022), NASA Glenn materials, and the
> NTRS corpus digested in docs 03–05.

---

## 1. The core idea: remove buoyancy, change everything

On Earth, buoyancy drives convection: hot gas rises, cold air sinks. This:
- Gives flames their teardrop shape
- Carries soot upward (yellow, luminous flame)
- Makes flames flicker
- Feeds fresh oxygen to the reaction zone from below

In microgravity, buoyancy-driven convection essentially vanishes. Consequences:

1. **Flames become spherical** (or pancake/fan-shaped in flows) and typically **blue and soot-free** —
   soot no longer streams upward; sootier products linger near the fuel.
2. **No flicker** in the same sense as Earth.
3. Flames can become **dimmer and harder to detect** — reduced airflow means smoke lingers and
   ages near the source (SAME finding: µg smoke particles are typically ~twice the 1-g size).
4. Heat loss to the burner/support becomes dominant in some regimes → flames can **self-extinguish**
   radiatively — impossible to see on Earth's buoyant flames at the same scale.
5. Low-speed forced flows (spacecraft ventilation, ~1–30 cm/s) replace buoyancy as the oxidizer
   feed — flow velocity becomes a controlling variable, which is why hardware like BASS-II's
   fan-driven flow duct exists.

**Quotable (SME Yichen Alice Chen, official video):** a candle in microgravity "becomes more
spherical, soot-free, and blue because the hot gas no longer rises."

## 2. The cool-flame surprise (FLEX)

- Heptane/methanol droplets burning in microgravity entered a **"cool flame" regime** after visible
  extinction: a quasi-steady, ~500–800 K "flame" invisible to the eye, sustained by negative
  temperature-coefficient (NTC) low-temperature chemistry.
- This regime was **impossible to study on Earth** — buoyant flames mask it; ground attempts required
  enhancements (heated reactants, pulsed plasmas, ozone addition). CFI-G then produced
  **non-premixed cool flames of gaseous fuels with NO enhancements** on ISS.
- Relevance: low-temperature chemistry governs ignition limits — directly relevant to fuel storage
  safety and to the "flammability window" of future vehicle atmospheres.

## 3. Electric fields bend flames (E-FIELD Flames)

- Charged ions are naturally produced in flames. A field of **up to 10,000 V** between burner and
  mesh electrode drags ions → **ion-driven wind** that can reshape a spherical µg flame into a
  teardrop even in microgravity.
- E-FIELD results (Task Book + UC Irvine): 131 tests (>120 successful), 100% methane at 100 kPa;
  peak ion current 2–2.75 µA, nearly proportional to fuel velocity; µg flames show a **distinct
  ion-current peak at saturation then decrease** — fundamentally different V-I behavior from 1-g;
  highly-diluted flames can be stabilized with very weak fields.
- Significance for the challenge: electric fields modify flame shape, soot, **and flammability
  limits** — and partial-gravity flame behavior (buoyancy level) is one of the knobs that changes
  ion-wind vs buoyancy balance → this is why the challenge suggests E-FIELD as a partial-gravity
  proxy. (It is a PROXY, not a measurement — label accordingly.)

## 4. Flame spread regimes (the dashboard's physics vocabulary)

- **Opposed flow spread:** flame moves against the incoming oxidizer flow; spread rate scales
  ~O2^0.9 × P^0.05 — fast across nearly all spacecraft conditions.
- **Concurrent flow spread:** flame spreads with the flow; rate scales ~O2 × V × P^0.5 — steeper
  O2 dependence, the dangerous mode in long vehicles.
- **Thermally thin vs thick fuels:** thin films (fabrics, Kapton) spread readily; thick slabs can
  self-extinguish without flow.
- **Extinction modes in µg:** radiative extinction (large flames lose too much heat), convective
  extinction (blowoff at high flow), and chemical-kinetic limits (low O2).

## 5. Suppression physics (FLEX + water mist)

- **Gas dilution suppression:** FLEX-2 mapped suppression of droplet flames by CO2 and He dilution —
  the data for "how much diluent stops a spacecraft fire."
- **Water mist:** fine water mist (MIST experiment) — droplets evaporate in the flame, cooling it;
  works in µg because evaporation, not gravity-driven settling, does the work → basis for ISS-derived
  fine-water-mist extinguishers (Earth-applications beat).
- **"Turning off ventilation is NOT suppression":** NASA gap analysis explicitly warns airflow
  shutdown can't be used as an extinguishment strategy (fires can persist and grow at low flow in µg).

## 6. Detection physics (SAME family)

- Smoke in µg **ages and grows** as it lingers: geometric-mean diameters roughly double with aging
  (e.g., Kapton 80 → 155 nm; silicone 189 → 352 nm over 720 s aging).
- ISS optical detectors vs shuttle ionization detectors respond to **different size ranges** —
  Teflon smoke (small particles) gave weak/erratic ISS-detector signals but strong shuttle-detector
  signals.
- Detector design implication: future spacecraft need detectors that discriminate **more than one
  moment of the particle size distribution** (SAME final report conclusion).

## 7. Partial gravity (the frontier)

- Lunar gravity (0.165 g) sits between the well-studied extremes — and can be WORSE than either:
  **"goldilocks zone"** of reduced convective heat loss while still replenishing oxygen
  (FM2 NTRS 20240015307).
- SIBAL fabric (cotton/fiberglass blend) burns **downward** in lunar-g (centrifuge + parabolic
  flight evidence) where in 1-g it extinguishes immediately after ignition.
- Theory + experiments: **oxygen flammability limits in lunar-g are lower than 1-g limits** — the
  Δ depends on material and burn direction.
- LUCI (2025): flammability results from a rotating sounding rocket at partial g.
- PSI has NO partial-g datasets (challenge text) — the dashboard must present partial-g as
  **bounded interpolation**, anchored by these NTRS papers. See doc 06.

## 8. One-sentence demos of each physics beat (for the video script)

- "On Earth fire is a teardrop; in freefall it's a blue sphere that can whisper itself out."
- "NASA's droplet flames kept burning after you could no longer see them — the cool-flame discovery."
- "Ten thousand volts can bend a flame on the ISS."
- "At lunar gravity, some fabrics burn in ways they don't on Earth or on the ISS — the goldilocks zone."
- "Smoke lingers, grows, and fools your detector: µg smoke particles run about twice Earth size."
