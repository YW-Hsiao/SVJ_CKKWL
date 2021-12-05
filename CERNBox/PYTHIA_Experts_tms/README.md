Remark:
1. Layer 1:
pdgs_for_merging_cut_with_82_part(1, 2, 3) -> set pdgs_for_merging_cut [1, 2, 3, 4, 5, 6, 21, 82] (Default) in MadGraph
pdgs_for_merging_cut_without_82 -> set pdgs_for_merging_cut [1, 2, 3, 4, 5, 6, 21] in MadGraph

2. Layer 2:
s_ckkwl_tms(10, 20, 30, ...) -> ktdurham = 10, 20, 30, ...
s_ckkwl_tms(50, 70)_iseed -> iseed = 300, 2300, 2346, ...

3. Layer 3:
hepmc -> Store .cmnd, .hepmc, and .log files
root -> Store .root and .log files
svj_ckkwl-4.cmnd, ckkwl-4.hepmc, ... -> Merging:mayRemoveDecayProducts = off
svj_ckkwl-8.cmnd, ckkwl-8.hepmc, ... -> Merging:mayRemoveDecayProducts = on

For s_ckkwl_tms20 and s_ckkwl_tms50, we test different TMS of PYTHIA when fixed ktdurham in LHEF.
hepmc_diff_TMS -> Store .cmnd, .hepmc, and .log files
root_diff_TMS -> Store .root and .log files
svj_ckkwl-4_tms(10, 30, 50, ...).cmnd -> Merging:TMS = 10, 30, 50, ... & Merging:mayRemoveDecayProducts = off
svj_ckkwl-8_tms(10, 30, 50, ...).cmnd -> Merging:TMS = 10, 30, 50, ... & Merging:mayRemoveDecayProducts = on
