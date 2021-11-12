#!/bin/bash
# Program:
#     This program is just the test.
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


echo "Start Running"
echo "date: $now"

for ((i=0; i < ${#tms[@]}; i++)); do
    echo $i ${tms[$i]}
done
echo "----------"

cd $path_MG5v273
pwd
for ((i=0; i < ${#tms[@]}; i++)); do
    echo $path_sChCkkwl/s_ckkwl_tms${tms[$i]}/Zpxdxdx.txt
done
echo "----------"
for ((i=0; i < ${#tms[@]}; i++)); do
    echo Execute $path_sChCkkwl/s_ckkwl_tms${tms[$i]}/Zpxdxdx.txt
done
echo "----------"

echo ${tms}
echo ${#tms}
echo ${#tms[@]}
echo ${#tms[i]}
echo "----------"

for ((i=0; i < ${#tms[@]}; i++)); do
    path_lhe="$path_sChCkkwl/s_ckkwl_tms${tms[$i]}/s/Events/run_01"
    #echo $i $path_lhe
    cd $path_lhe
    pwd
    echo $i "------Change PID------"
done
