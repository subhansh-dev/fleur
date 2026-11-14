# PARTIAL GRAVITY — the lunar-g "goldilocks zone" (our differentiator, fully anchored)

> PSI has NO partial-gravity combustion datasets (challenge text). But NTRS has fresh 2024–2026
> PAPERS with partial-g results, plus theory that predicts the worst case is lunar gravity itself.
> This doc is the evidence pack for the bounding panel. All numbers verbatim from the papers.

---

## 1. The thesis (quote-ready)

> "Lunar gravity has been found to increase the limits of flammability for some materials compared
> to Earth gravity, presenting a goldilocks zone of reduced convective heat loss, while generating
> enough buoyant flow to replenish fresh oxygen into the flame zone." — FM2, NTRS 20240008623

> "Partial-g fire in an extraterrestrial habitat is a real hazard that is expected to be
> substantially worse than in 0-g and potentially worse than even 1-g." — NTRS 20260000646

Theory (Sacksteder & T'ien 1994, cited by NTRS 20260000646): **flame spread rate as a function of
gravity peaks at lunar gravity, and the oxygen concentration for flammability reaches a MINIMUM
value near g = g_Lunar** — i.e., the O2 you need to keep a fire alive is lowest at lunar gravity.

## 2. The evidence stack (oldest → newest)

| Source | Platform | Gravity tested | Duration | Headline result |
|---|---|---|---|---|
| Sacksteder & T'ien 1994 (theory/numerics, cited in 20260000646) | — | 0 → 1 g sweep | — | Spread-rate peak & O2-limit minimum near lunar g |
| FM2 drop-tower centrifuge tests | Zero-g facility | Simulated lunar-g | 5.18 s/test | **Lower O2 flammability limits at lunar-g than 1-g** (e.g., polycarbonate at 30% O2 screening) |
| FM2 centrifuge/parabolic-flight fabric tests | Centrifuge + parabolic flight | Simulated lunar-g | ~25 s | **SIBAL fabric burns DOWNWARD in air at lunar-g; at 1-g it extinguishes immediately after ignition** |
| LUCI (NTRS 20250010653) | Blue Origin New Shepard, spinning, **Feb 4, 2025** | Simulated lunar-g: 11 RPM, 1.22 m radius ≈ 0.165 g | **>150 s burns — first-ever extended-duration (>25 s) combustion at lunar gravity** | Spread SLOWER at lunar-g than 1-g in this test: SIBAL base 0.92 vs 1.5 mm/s, tip 1.1 vs 2.8 mm/s; PMMA tip 1.5 vs ~4.0 mm/s; extinction delayed ~45 s in partial-g |
| FM2 flight (NTRS 20240008623/20240015307) | CLPS mission CP-21 (SpaceX HLS lander), **launch late 2026** | TRUE lunar gravity (1.62 m/s²) | Long-duration on the surface | First combustion experiments on another world; 4 samples in 21% O2/14.7 psia AND 34% O2/8.2 psia |

## 3. LUCI details (the honest read — important nuance!)

- Flown Feb 4, 2025 on a spinning New Shepard; 11 RPM at 1.22 m radius ⇒ ω²r ≈ 1.62 m/s² ≈ 0.165 g
  (g value computed from the stated parameters).
- Fuels burned in pairs: SIBAL fabric 5 × 30 cm (downward burn) + 4-mm PMMA rod (upward burn),
  in air at normal pressure; chamber O2 fell 20% → 14.3% during the PMMA burn.
- Coriolis force visibly pulled the flame off the rod axis; PMMA flame eventually engulfed the
  entire rod; 1-g extinction came ~45 s sooner than partial-g (SIBAL).
- **Honesty flag for the dashboard:** LUCI's own spread rates were SLOWER at lunar-g than 1-g for
  both fuels. The "more flammable at lunar-g" claim rests on the flammability-LIMIT results
  (FM2 centrifuge: lower O2 limits at lunar-g) and theory (O2-limit minimum near lunar-g) —
  spread RATE and flammability LIMIT are different quantities, and the papers treat them as such.
  The bounding panel must keep this distinction visible.
- The LUCI team's own future-work hypothesis: "some materials burning in partial-g environments may
  be more flammable compared to 1-g."

## 4. Why lunar-g + exploration atmosphere compounds the risk

From the NASA fire-safety tech-development report (NTRS 20210021318) and NTRS 20260000646:
- Future Moon/Mars crews live at **sub-atmospheric pressure with elevated O2** (SEA: 30–34% O2 at
  8.2–10.2 psia) to enable frequent EVAs.
- "Material flammability and flammability limits in Lunar-g is a high priority — especially because
  of the elevated %O2."
- "Owing to lack of access to partial gravity test platforms, the data set of lunar flammability
  tests is very small."
- Theory + experiments: **oxygen flammability limits in lunar-g are lower than those measured in
  1-g**; the Δ depends on material AND burn direction (concurrent vs opposed).
- "Additional work is needed to establish a partial gravity flammability acceptance criterion" —
  no standard exists yet. That gap is exactly what an evidence dashboard can visualize.
- Test-time reality check: drop tower 5 s · parabolic flight ~25 s · LUCI rocket ~150 s · ISS
  centrifuges have small radii → strong Coriolis artifacts. FM2 (surface, long duration) is the
  first clean measurement — hence its "first combustion on another world" framing.

## 5. How the dashboard uses this (bounding-panel spec)

1. Show µg and 1-g measurements as solid data points.
2. Draw the lunar-g region as a **bounded interpolation envelope**, labeled
   "bounded interpolation, not measurement."
3. Anchor the envelope edges with: FM2 centrifuge O2-limit results (lower limits at lunar-g),
   Sacksteder & T'ien 1994 minimum (O2 limit minimum near g_Lunar), LUCI spread rates (slower at
   lunar-g in tested fuels — the counterpoint), Saffire VI's explicit partial-g extension note.
4. Caveat card: E-FIELD Flames is an atmosphere/flow probe, NOT a gravity measurement — partial-g
   mimicry is indirect at best.
5. Honesty line (UI + pitch): "PSI holds zero partial-gravity datasets. The freshest partial-g
   evidence is papers — LUCI (2025), FM2 (2024), LPSC abstract (2026) — and FM2 lands on the Moon
   in late 2026. We surface what exists, and show exactly where the data ends."

## 6. Citation chips for this panel
- FM2 poster: NTRS 20240008623 / 20240015307 — https://ntrs.nasa.gov/citations/20240008623
- LUCI: NTRS 20250010653 — https://ntrs.nasa.gov/citations/20250010653
- Lunar/Martian-gravity abstract: NTRS 20260000646 — https://ntrs.nasa.gov/citations/20260000646
- SAFFIRE VI: NTRS 20240002981 — https://ntrs.nasa.gov/citations/20240002981
- NASA tech-dev gaps: NTRS 20210021318 — https://ntrs.nasa.gov/citations/20210021318
