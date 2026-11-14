# AUDIT LOG — fact-check pass, Nov 3 2026
Audit method: every NTRS ID cross-checked against `metadata/manifest-ntrs.csv` (actual harvest output); landscape claims re-checked against the Nov-1/2 web sources; architecture claims labeled by evidence provenance.

## Corrections applied
1. **BIBLIOGRAPHY header counts** — was "76 NTRS + 16 arXiv" → now **75 NTRS + 14 arXiv kept** (8 `_CUT_OFFTARGET_` = deletable).
2. **Won't-fix-IDs misassignment** — 20140006584 is "Unmanned Vehicle Material Flammability Test" (per manifest), NOT a low-g smoke-particulate paper; smoke bullet now correctly lists 20140006585 + 20140006579.
3. **Coverage overclaim (INDEX.md)** — "All names covered by our PDF corpus" was false: corpus does NOT include E-FIELD Flames, DAFT/DAFT-2, SAME-R final report, BASS-II conference series → now listed as "grab manually Nov 13".
4. **E-FIELD query trap (BIBLIOGRAPHY)** — the electric-field query returned a *magnetic-field* paper (20040053589); flag added so nobody cites the wrong physics.
5. **LUCI/FM2 framing softened** — "partial-g data EXISTS" → "partial-g flammability results *published as papers* on NTRS; PSI dataset status TBD; validate contents before citing numbers." The challenge's own claim ('no partial-g data in PSI') remains TRUE and our wording now doesn't contradict it.
6. **Mars transit atmospheres (ARCHITECTURE §3)** — "~26% O2, ~8.2 psi" was presented as fact → now labeled **ASSUMED, verify or drop before submission**. Moon Base ≥30% O2/≤10.2 psi and Suit 100%/4.3 psi ARE challenge-text numbers = defensible (labeled).
7. **Lunar gravity value** — 0.166g → ~0.165g (1.62/9.81).
8. **AWS S3 bulk access (EXISTING-SOLUTIONS)** — "bulk programmatic access is possible" → "registry suggests open S3 footprint; must be proven" (registry page may only link the portal).
9. **PSI combustion listing (EXISTING-SOLUTIONS)** — BASS/ACME/SoFIE/DAFT PSI-dataset presence now marked VERIFY-ON-PORTAL (our NTRS coverage is proven; the PSI listing shown in research only confirmed FLEX→SPICE + ground studies).
10. **Video limits (RUNBOOK)** — hard-coded "<512MB" removed; now "check current-year official submission limits".
11. PDF counts fixed everywhere to 75 NTRS + 14 arXiv kept.
12. Typos: "suche as" → "such as".

## Status of every load-bearing claim (provenance map)
| Claim | Provenance |
|---|---|
| PSI = data source; open access; investigation-level downloads | challenge text + science.nasa.gov PSI pages ✓ |
| PSI unified with OSDR, ~100+ investigations, ~30 TB | science.data.nasa.gov feature article ✓ |
| Official Resources drop Fri Nov 13 | challenge page ✓ |
| Moon Base ≥30% O2 @ ≤10.2 psi; suit 100% @ 4.3 psi; CFI-G up to 85% O2; E-FIELD as partial-g mimic; no PSI partial-g datasets; rocket combustion out of scope | challenge text verbatim ✓ |
| FLEX/BASS/BRE/ACME/SAME/SAFFIRE experiment families + hardware groupings (CIR/MDCA/MSG) | challenge text + our downloaded reports ✓ |
| Corpus of 75 NTRS PDFs incl. 2024–26 partial-g + SAFFIRE-VI papers | manifest-ntrs.csv ✓ (contents of each PDF still to be read by team) |
| Competitor landscape (Elicit/SciSpace/etc. none domain-specific) | market overview sources from Nov 2026 ✓ |
| Ranking rubric weights (w1–w5), RRF fusion k=60, chunking sizes | DESIGN CHOICES (not facts) — stated as our method, adjust during build |

## Remaining "verify at/after Nov 13" checklist (owner: team)
- [ ] PSI portal: confirm BASS/ACME/SoFIE/DAFT/DAFT-2 dataset listings + download target datasets for Top-12
- [ ] Official Resources list → reconcile our target list
- [ ] E-FIELD + DAFT/DAFT-2 + SAME-R + BASS-II conference papers → manual download
- [ ] Open LUCI/FM2/lunar-gravity PDFs → extract usable numbers for bounding anchors
- [ ] Confirm current-year submission limits & required fields
- [ ] Mars transit atmosphere numbers: verify from NASA source or drop that preset
- [ ] Semantic Scholar/OpenAlex enrichment (optional, rate-limited earlier)
