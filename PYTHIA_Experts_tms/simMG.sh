#!/bin/bash
# Program:
#     This program is to do the MadGraph simultaion about s-channel with CKKW-L jet merging.
#     Zpxdxdx.txt is nevents 10000, ECM=14 TeV.
#     ickkw 0, xqcut 0.0, ktdurham 10, 20, 30, 50, 70, 100, and 130.
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/10/26
#     First release
# Version: v.1.0

# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/PYTHIA_Experts_tms"
path_MG5v273="/root/MG5_aMC_v2_7_3"  # Where is your mg5_aMC
tms=("10" "20" "30" "50" "70" "100" "130")


# Check your .txt file output & launch path, nevents, and ECM!!   ###
echo "Start Running"
echo "date: $now"
echo "Path of scrpit: $path_sChCkkwl"
echo "Path of MG5: $path_MG5v273"
#echo "Path of .txt and .log file: $path_sChCkkwl"

cd $path_MG5v273
#nohup ./bin/mg5_aMC $path_sChCkkwl/Zpxdxd.txt > $path_sChCkkwl/Zpxdxd.log 2>&1 &

for ((i=0; i < ${#tms[@]}; i++)); do
    echo Execute $path_sChCkkwl/s_ckkwl_tms${tms[$i]}/Zpxdxdx.txt
    nohup ./bin/mg5_aMC $path_sChCkkwl/s_ckkwl_tms${tms[$i]}/Zpxdxdx.txt > $path_sChCkkwl/s_ckkwl_tms${tms[$i]}/Zpxdxdx.log 2>&1 &
done
