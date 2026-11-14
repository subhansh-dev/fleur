# EXPERIMENT DIGEST — SAFFIRE fire-scale campaign + the smoke-detection story

> Distilled Nov 14, 2026 from the actual NTRS PDFs (all numbers verbatim from the papers).
> Companion docs: 03 (BASS/solids), 04 (FLEX/ACME), 06 (partial gravity).

---

## 1. SAFFIRE — the biggest fires ever burned in space

### The scale story (quotable)
Saffire burned practical-scale fires of **1.5–3.2 kW** in free air volumes of **17–19 m³** aboard
unmanned Cygnus cargo vehicles, on samples **0.94 m × 0.4 m** —
> "at least an order of magnitude larger in both dimensions than any prior low-g flame spread
> experiment" (prior low-g experiments: ≤10 cm samples). — NTRS 20170001636

### Saffire I–III (2016–17, Cygnus)
- Saffire-I: 20 cm/s flow; Saffire-III: 30 cm/s; **SIBAL cloth** (75% cotton / 25% fiberglass).
- Saffire-II: **9 samples of 5 cm × 29 cm** (3 silicone thicknesses 0.25–1.02 mm, SIBAL, PMMA flat +
  structured, PMMA-to-Nomex) selected near their 1-g Maximum Oxygen Concentration around 21% O2 —
  built to test **low-g MOC limits** in long-duration microgravity. (NTRS 20170001636)
- Ops: launched OA-6 (ops Jun 2, 2016), OA-5 (ops Sep 19, 2016), OA-7 (ops Mar 3, 2017).
  Cygnus stayed in orbit up to 8 days / 20 Gbit of data downlink. (NTRS 20170000230)

### Saffire VI (Dec 2023, final flight) — ICES-2024-365
Full paper: NTRS 20240002981 · slide deck: NTRS 20240007488 (Urban et al., international team incl.
ESA/ESTEC, ZARM, CNRS-ICARE, FRISSBE).

**Test matrix as executed (all 20 cm/s flow):**

| Test | Fuel | Size | Atmosphere | Free volume |
|---|---|---|---|---|
| IV-1 | SIBAL cloth | 50 cm | 100.0 kPa, 22.0% O2 | 17.9 m³ |
| V-2 | Cotton jersey | 50 cm | 70.7 kPa, 26.2% O2 | ~19 m³ |
| VI-2 | SIBAL | 50 cm | 54.1 kPa, 31.0% O2 | ~19 m³ |
| VI-3 | PMMA two-sided | 18 cm | 54.6 kPa, 30.3% O2 | ~19 m³ |
| VI-4 | PMMA one-sided | 18 cm | 55.2 kPa, 28.8% O2 | ~19 m³ |

(Nomex sample **did not ignite** and was excluded.)

**Heat release & toxic products (Table 2):**
- VI-3 two-sided PMMA: burned 780 s, peak HRR **3,080 W**, total **1,280 kJ**; CO2 rise
  **8,539 ppm (3.51 mmHg)** — above NASA-STD-3001's **1-h CO2 limit of 3 mmHg**; CO rise
  **308 ppm** vs 24-h SMAC **100 ppm** / 1-h SMAC **425 ppm**.
- VI-4 one-sided PMMA: 1,200 s, peak 1,507 W, 830 kJ; CO2 8,117 ppm; CO 320 ppm.
- VI-2 SIBAL: 112 s, peak 3,217 W; CO 120 ppm. IV-1 SIBAL: avg 3,150 W, 409 kJ.
- PMMA flames **grew continuously** until flow was cut 20 → 5 cm/s at 1,120 s (terminated 1,420 s).

**The detection-latency bombshell (quote-ready):**
> "The smoke from the fire event was readily detected by an ionization detector and a light
> scattering system but a typical alarm threshold was only achieved at 981 seconds. By this time
> most of the hazardous gas release had occurred." — NTRS 20240002981

**Hazard framing insight:** far-field temperature barely rose (~21 °C) while the smoke-filter-unit
outlet hit 77 °C — **the heat is local, the toxic gases are vehicle-wide. The gases, not the heat,
are the design driver.** The paper explicitly says partial-gravity extension is future work:
> "Further work will be needed to extend these results to the partial gravity environment expected
> on future mission to the moon and Mars."

## 2. The smoke-detection story: CSD → DAFT → SAME → Saffire VI

### Era 1 — blind design (pre-1996)
- Shuttle detector: dual-chamber **ionization** with inertial separator rejecting particles
  >1–2 µm (9 W). ISS detector: 2-pass near-IR forward **light-scattering**, most sensitive to
  particles **larger than ~1 µm** (1.5 W). **Both designed without any low-g smoke data.**
  ISS alarm threshold: **2 mg/m³**. (NTRS 20070031686, 20170007283)
- Only background number for decades: Shuttle STS-32 (1990) ~**55 µg/m³** airborne mass dominated
  by >100 µm particles (which settle on Earth but stay airborne in µg). (NTRS 20040053578)

### Era 2 — CSD (STS-75, 1996) shows the physics
- µg primary smoke particles are **~2× larger** than 1-g: Kapton **76 vs 35 nm**, Teflon
  **136 vs 75 nm**, candle soot 34 vs 17 nm. Detector performance **flips by material** in µg.
  (NTRS 20070031686)

### Era 3 — DAFT proves the instruments (ISS, Expeditions 10/13)
- Modified P-Trak condensation counter + DustTrak validated in µg; first ISS background:
  **<0.005 mg/m³, <15 particles/cm³** — "substantially cleaner than the shuttle or typical office
  environment." (NTRS 20070031686)

### Era 4 — SAME/SAME-2 deliver the design dataset (ISS 2007 & 2010)
Full paper: NTRS 20130000422 (AIAA 2012-3536) · talk: NTRS 20140006585.
- Method: overheated 5–6 spacecraft materials **below ignition** (pyrolysis smoke); airflow
  quiescent to 8 cm/s; aging chamber 11–1800 s; **moment method** (P-Trak = M0 count; ionization
  chamber = M1; DustTrak = M3 mass) + TEM grids. 100+ tests.
- **Headline:** "Overall the majority of the average smoke particle sizes were found to be in the
  **200 nm to 400 nm range**."
- Baseline → aged-720-s count-mean diameters: Kapton 0.056 → 0.109 µm; lamp wick 0.128 → 0.276 µm;
  silicone 0.196 → 0.355 µm; Teflon 0.101 → 0.105 µm; Pyrell 0.204 → 0.359 µm. Aging roughly
  **doubles** diameters.
- **Quiescent (zero-flow) smoke is 2–3× larger** than smoke in 8 cm/s flow — smoke trapped in
  avionics enclosures grows much bigger than in ventilated areas.
- For lamp wick and silicone, **~40% of aerosol mass has aerodynamic diameter >1 µm**.
- GASP lab context (NTRS 20170007283): circuit-board smoke ~350 nm; Teflon smoke 25–700 nm;
  detection times 1–6 min; **"Teflon smoke generated would never trigger alarm — Too slow!"**

### Era 5 — the design conclusion
No single-moment detector covers the range: Kapton/Teflon smokes are nearly invisible to light
scattering; large smokes and dust swamp ionization. The two-moment MPASS prototype **halved
response variance** and can discriminate smoke vs dust. Modern line: Airborne Particulate Monitor
(5 nm–2 µm counter + 1–20 µm spectrometer, on ISS since 2020); ESAP mini-sensors aiming at
smoke-vs-dust discrimination — note **"the current practice on ISS is to disable the smoke detectors
during vacuuming, in order to prevent false fire alarms from cabin dust."** Lint fibers exceed all
other ISS particle sources by ≥100×. (NTRS 20130000422, 20190032657)

### Era 6 — Saffire VI closes the loop at real scale
A real 3-kW fire's smoke crossed the 1 mg/m³ ionization threshold only at **981 s** — after most
CO/CO2 release → hybrid smoke + gas detection is needed. (NTRS 20240002981)

## 3. Off-target warning
NTRS 20220014681 (SAGE II/III stratospheric smoke) is **Earth-atmosphere wildfire research** — do
not cite for spacecraft fire safety. (Flagged so nobody wastes a citation chip on it.)

## 4. Top quotables for slides
1. "1.5–3.2 kW fires in 17–19 m³ — an order of magnitude larger than any prior low-g experiment."
2. "The alarm finally sounded at 981 seconds — after most of the hazardous gas release."
3. "The gases, not the heat, are the vehicle-wide hazard: CO2 rose 8,539 ppm — past the 1-hour limit."
4. "µg smoke runs ~2× Earth size: Kapton 76 vs 35 nm."
5. "Zero-flow smoke grows 2–3× larger than ventilated smoke."
6. "ISS air is cleaner than your office — <0.005 mg/m³ — yet lint still fools the detectors."
