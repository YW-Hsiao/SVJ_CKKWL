#!/bin/bash
# Program:
#     This program is to do the Pythia simultaion about s-channel with CKKW-L.
#     I copy my s-ch. .cmnd in https://github.com/YW-Hsiao/SVJ_CKKWL/tree/main/s-channel_ckkwl-v2/hepmc
#     Main:numberOfEvents = 10000, Random:seed = 100
#     Merging:doKTMerging = on, Merging:Process = pp>{xd,4900101}{xd~,-4900101}
#     Merging:mayRemoveDecayProducts = off for svj_ckkwl-4.cmnd
#     Merging:mayRemoveDecayProducts = on for svj_ckkwl-8.cmnd
#     Merging:TMS = 10, 30, and 50
#     LHEFInputs:nSubruns = 1, Main:subrun = 0
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/10/27
#     First release
# Version: v.1.0

# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/PYTHIA_Experts_tms/s_ckkwl_tms20/hepmc_diff_TMS"
path_examples="/root/pythia8245/examples"
tms=("10" "30" "50")


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
    echo $i "----------"
    echo Execute $path_sChCkkwl/svj_ckkwl-4_tms${tms[$i]}.cmnd
    nohup ./main89 $path_sChCkkwl/svj_ckkwl-4_tms${tms[$i]}.cmnd $path_sChCkkwl/ckkwl-4_tms${tms[$i]}.hepmc > $path_sChCkkwl/ckkwl-4_tms${tms[$i]}.log 2>&1 &
    echo Execute $path_sChCkkwl/svj_ckkwl-8_tms${tms[$i]}.cmnd
    nohup ./main89 $path_sChCkkwl/svj_ckkwl-8_tms${tms[$i]}.cmnd $path_sChCkkwl/ckkwl-8_tms${tms[$i]}.hepmc > $path_sChCkkwl/ckkwl-8_tms${tms[$i]}.log 2>&1 &
done
