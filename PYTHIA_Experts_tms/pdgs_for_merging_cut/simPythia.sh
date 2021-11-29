#!/bin/bash
# Program:
#     This program is to do the Pythia simultaion about s-channel with CKKW-L.
#     I copy my s-ch. .cmnd in https://github.com/YW-Hsiao/SVJ_CKKWL/tree/main/s-channel_ckkwl-v2/hepmc
#     Main:numberOfEvents = 10000, Random:seed = 100
#     Merging:doKTMerging = on, Merging:Process = pp>{xd,4900101}{xd~,-4900101}
#     Merging:mayRemoveDecayProducts = off for svj_ckkwl-4.cmnd
#     Merging:mayRemoveDecayProducts = on for svj_ckkwl-8.cmnd
#     Merging:TMS = 20 and 50
#     LHEFInputs:nSubruns = 1, Main:subrun = 0
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/11/16
#     First release
# Version: v.1.0

# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/PYTHIA_Experts_tms/pdgs_for_merging_cut"
path_examples="/root/pythia8245/examples"
tms=("20" "50" "50_iseed" "50_iseed2")


# Check your .cmnd file TMS, Beams:LHEF path, number of events, and random seed!!   ###
# Check you have executed "make main89"!!
echo "Start Running"
echo "date: $now"
echo "Path of script: $path_sChCkkwl"
echo "Path of Pythia examples main89: $path_examples"
#echo "Path of .cmnd, .log, and .hepmc files: $path_hepmc"

cd $path_examples
pwd
for ((i=0; i < ${#tms[@]}; i++)); do
    path_hepmc="$path_sChCkkwl/s_ckkwl_tms${tms[$i]}/hepmc"
    echo $i "----------"
    echo Execute $path_hepmc/svj_ckkwl-4.cmnd
    nohup ./main89 $path_hepmc/svj_ckkwl-4.cmnd $path_hepmc/ckkwl-4.hepmc > $path_hepmc/ckkwl-4.log 2>&1 &
    echo Execute $path_hepmc/svj_ckkwl-8.cmnd
    nohup ./main89 $path_hepmc/svj_ckkwl-8.cmnd $path_hepmc/ckkwl-8.hepmc > $path_hepmc/ckkwl-8.log 2>&1 &
done
