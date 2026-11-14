# EXPERIMENT DIGEST — FLEX cool-flame discovery + the ACME campaign (CIR/MDCA)

> Distilled Nov 14, 2026 from the actual NTRS PDFs (numbers verbatim from papers/abstracts).
> Companion docs: 03 (BASS/solids), 05 (SAFFIRE/detection), 06 (partial gravity).

---

## 1. The cool-flame discovery story (FLEX — the project's crown jewel)

**The experiment:** FLEX (Flame Extinguishment Experiment) burned isolated fuel droplets in the
Multi-User Droplet Combustion Apparatus (MDCA) inside the Combustion Integrated Rack (CIR),
Destiny module, ISS. NASA/TP—2015-216046 (NTRS 20150023456): **284 tests, Mar 2009–Dec 2011**,
methanol and n-heptane droplets **2–5 mm**, pressures **0.70–3.05 atm**, O2 diluted by N2 and CO2
(up to 50% CO2), >100 useful combustion histories, burning-rate constants K ≈ 0.5–0.9 mm²/s
(methanol in air). Remotely operated from NASA Glenn. Team: Dietrich (PI/project scientist),
Ferkul, Nayagam, Hicks, Williams (UCSD), Dryer (Princeton), Shaw (UC Davis), Choi (UConn),
Avedisian (Cornell).

**The discovery:** large n-alkane droplets (heptane, decane) visibly extinguished **radiatively**
at ~1200 K — and then kept burning **invisibly** in a quasi-steady **cool flame at ~700–780 K**
(low-temperature "NTC" chemistry) for tens of seconds:

- First captured: **FLEX-377 — n-decane, D0 = 4.05 mm, 25% O2/75% N2, 0.5 atm** (NTRS 20160000344)
- Cool flames sit close to the droplet surface, **flame standoff ratio ≈ 3**, both fuel AND oxygen
  leak through the flame sheet (Liñán partial-burning regime); measured FSR 3.2 vs theory 3.1.
- Simulation (NTRS 20150018397, UNICORN 2-D, 127 species): hot flame ~6–7 s → extinction at ≈1200 K
  → **cool-flame regime ≈18 s** at ≈700 K → **flash re-ignition** with flame-edge propagation.
- Dual-flame theory (NTRS 20170000666): hot + cool flames can coexist; at 0.3 MPa the cool flame's
  radiance reached **almost one-half of the hot-flame radiance**.

**Why it's a fire-safety story (quote-ready):**
> "Cool flames can extend the flammability of fuels in a microgravity environment." (NTRS 20205008449)
A spacecraft fire can **look extinguished while still burning** — an invisible ~700–780 K flame
that ordinary detectors and eyes can miss. NASA's own framing: "Spacecraft safety procedures based
only on considerations of hot flames may be inadequate." (NTRS 20170007283)

**Suppression-agent twist:** diluent choice changes whether cool flames survive.
> "Xenon decreases burning rates substantially, but can sustain cool flames at much lower oxygen
> concentrations compared to helium." (NTRS 20205008449)
Diluents act through heat transfer/diffusion, not kinetics. CO2 is the US-module ISS suppressant —
but cool-flame survival at very low O2 is a post-suppression re-ignition hazard.

**Methanol limit (quantified):** >100 methanol droplets in O2–N2–(CO2/He):
> "The limiting oxygen index for methanol in these diluent gases is around **12% to 13% oxygen by
> volume**." (NTRS 20130014061)
Example extinction diameters: 1.10 mm (air, 1 atm, D0 2.75 mm); 1.57 mm (21% O2 + 30% CO2, 0.7 atm);
1.42 mm (21% O2 + 30% He). He raises burning rate; CO2 shrinks the flammable envelope.

**Original mission purpose (quote):** "assess the effectiveness of fire suppressants in
microgravity and quantify the effect of different possible crew exploration atmospheres on fire
suppression... for selection of the fire suppressant for next generation crew exploration vehicles."
(NTRS 20090014812 — 196 planned test points, O2 0.10–0.50, CO2/He suppressant 0–0.70 mole fraction,
including the "vent the cabin to space" strategy motivation.)

## 2. The ACME campaign (Nov 2017 – Feb 2022, same CIR)

Six experiments on one modular insert; **>1,500 flames** ignited; 30+ crew members from 6
countries; all commanded remotely from NASA Glenn. (NTRS 20210021781, 20220005205)

### BRE (Burning Rate Emulator) — THE Moon-base dataset
A porous gaseous burner emulates a condensed fuel by matching heat of combustion, surface
temperature, smoke point, and heat of gasification (emulates fuels with heat of gasification
0.4–4 kJ/g). Drop-tower validation (NTRS 20170009141, 20160010073): 25/50 mm burners, methane +
ethylene, **O2 21–30%**, 0.5–1 atm.
**ISS headline (quote-ready):**
> "Hazard! Low-momentum microgravity flames can burn for minutes in the absence of an air flow or
> flame spread." (NTRS 20210022542)
Yet flames **self-extinguish below ~25% O2**; larger flames die within **1.5 minutes**; methane
within **1 minute**; ethylene at elevated O2 burns for minutes.
**Dashboard beat:** at a Moon base's 30% O2, that 5-point margin above 25% is the razor's edge —
BRE is the direct evidence that quiescent high-O2 atmospheres burn longer and die differently.

### CFI-G (Cool Flames Investigation with Gases)
> "Observed the first spherical, quasi-steady, burner-supported cool flames!" (NTRS 20210022542)
Sequence: hot-flame radiative quench → **~1-second dark period** → cool flame on a 6.35-mm porous
spherical burner; fuels n-butane, ethane, propane; imaged via formaldehyde-chemiluminescence.
Challenge-text note: CFI-G ran up to **85% O2** (the CIR's FOMA can statically blend O2 up to 85%
at ±0.4% accuracy — NTRS 19980169294).

### E-FIELD Flames (UC Irvine — Dunn-Rankin & Chien)
Fields of **either polarity up to 10 kV** between burner and mesh electrode; distinct **peak ion
current** at the most compact flame (µg behavior differs from 1-g); "highly-diluted flames can be
stabilized with very weak electric fields"; soot generation suppressed. The challenge text's
partial-gravity-mimicry hint. (NTRS 20210022542, 20220005205; also science.nasa.gov E-FIELD page.)

### CLD Flame (Yale)
Sooty microgravity coflow flames contain **5×–8× more soot** than equivalent 1-g flames — worse
smoke for detectors and visibility. (NTRS 20210022542)

### SPICE (Smoke Point In Co-flow Experiment, MSG) — where the soot story started
MSG gas-flame experiment, PIs D. L. Urban (GRC) + P. B. Sunderland (U. Maryland); proof-of-concept
June 2009 in the Microgravity Science Glovebox; its hardware was later reused by SLICE. It measures
the **laminar smoke point of non-buoyant jet flames** — the largest jet flame that emits no soot —
across nozzle diameter × coflow air velocity. Results: **250 combustion tests, >70 smoke points**
identified (propylene, propane, ethylene) → soot-forming conditions vs coflow speed.
> "Initially deemed not possible in reduced gravity, the smoke point has been found to be
> substantially different in reduced gravity."
Why judges care: smoke-point data extends cone-calorimeter heat-release data to µg fires — a
missing input to spacecraft-fire heat-release models and material-selection criteria.
(science.nasa.gov SPICE page; NTRS 20130000582.)

### SLICE (Structure & Liftoff In Combustion Experiment, MSG, Feb–Mar 2012) — CLD's precursor
Reused the SPICE hardware in the MSG; PI Marshall Long (Yale); flown deliberately as a precursor to
ACME's CLD Flame to maximize its scientific return. Characterized flame structure from attached
through lifted conditions and measured **liftoff velocity limits** vs fuel (CH4/C2H4 ± N2 dilution)
and burner diameter. Key µg results:
- µg flames are **more stable** than 1-g: dilution limits extend, lifting at lower fuel
  concentration than 1-g (CLD Flame project page).
- But µg flames destabilize at **higher forced air flows** — the 0g/1g liftoff difference is
  comparable to the buoyant velocity of the 1-g flames (NTRS 20130000582).
- µg sooting flames: **lower soot temperatures, higher soot volume fraction**; soot shifts from the
  flame centerline to the wings (NTRS 20140017780).
Fire-safety read: flame attachment/detachment controls the stability of the entire trailing flame —
the anchoring physics that ventilation-flow management must respect.
(science.nasa.gov SLICE fact sheet; NTRS 20140017780, 20130000582.)

### s-Flame (Princeton/Rutgers) & Flame Design
Radiative extinction (high flow) vs kinetic/convective extinction (low flow) mapped; helium vs
nitrogen dilution shifts limits; one Flame Design flame burned **over 14 minutes** (longest
quasi-steady µg spherical flame, terminated only by ops constraints). (NTRS 20220005205)

## 3. The hardware-reuse story (one rack, three generations)

| Era | Hardware | Science |
|---|---|---|
| Design (1998–2002) | CIR: 100-L chamber (40 cm × 90 cm), tool-free windows, FOMA gas blending (O2 up to 85%, ±0.4%), gas chromatograph; "up to 90% of required hardware" common | NTRS 19980169294, 20020081329, 20030032248 |
| Droplet era (2009–2017) | MDCA insert ("designed to accommodate four different droplet combustion science experiments"; lineage: FSDC STS-73, DCE STS-83/94) | FLEX family → LOI/suppression → **cool-flame discovery (2012)** |
| Gaseous era (2017–2022) | ACME chamber insert (~0.4 m) — same chamber, new burners/electrode/mesh | 6 experiments, >1,500 flames → CIR handed to **SoFIE** (solid fuels) |

**Why this matters for the dashboard:** the same 0.02–3-atm, 85%-O2-capable chamber hosted
suppression physics (FLEX), an accidental discovery (cool flames), and a deliberate follow-on
(CFI-G). That's a single-facility, multi-generation evidence graph — perfect material for the
"similarities and differences between investigations" challenge objective.

## 4. ⚠️ Citation trap
NTRS 20040053589 is a **MAGNETIC**-field paper (MACE, permanent magnets). It is NOT E-FIELD Flames.
Do not cite it as electric-field evidence; treat as an exploratory partial-g analog at most.

## 5. Top quotables for slides
1. "The fire looked out. It wasn't. An invisible cool flame kept burning at 780 K."
2. "FLEX: 284 droplet burns, 0.7–3 atm — and the LOI for methanol is just 12–13% O2."
3. "BRE: flames burn for MINUTES with zero airflow — but die below ~25% O2. Moon base: 30%."
4. "ACME: >1,500 flames in one rack, one team, six experiments, 4.5 years."
5. "µg flames make 5–8× more soot — smoke your detector was never designed for."
6. "10,000 volts can bend, stabilize, and de-soot a flame."
