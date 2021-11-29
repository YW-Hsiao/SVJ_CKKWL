#!/bin/bash
# Program:
#     This program is to change PID for s-channel.
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/11/16
#     First release
# Version: v.1.0

# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/PYTHIA_Experts_tms/pdgs_for_merging_cut"
#path_lhe="$path_sChCkkwl/s/Events/run_01"
tms=("20" "50" "50_iseed" "50_iseed2")


echo "Start Running"
echo "date: $now"
echo "Path of scrpit: $path_sChCkkwl"
#echo "Path of .log file: $path_sChCkkwl"

for ((i=0; i < ${#tms[@]}; i++)); do
    path_lhe="$path_sChCkkwl/s_ckkwl_tms${tms[$i]}/s/Events/run_01"
    #echo $i $path_lhe
    cd $path_lhe
    pwd
    gzip -d unweighted_events.lhe.gz > $path_sChCkkwl/s_ckkwl_tms${tms[$i]}/changePID.log 2>&1
    echo $i "------Change PID------"
    echo "------Change PID------" >> $path_sChCkkwl/s_ckkwl_tms${tms[$i]}/changePID.log 2>&1
    sed -i 's/5000521/4900101/g' unweighted_events.lhe
    grep 4900101 unweighted_events.lhe >> $path_sChCkkwl/s_ckkwl_tms${tms[$i]}/changePID.log 2>&1
done

#cd $path_lhe
#gzip -d unweighted_events.lhe.gz > $path_sChCkkwl/changePID.log 2>&1
#echo "------Change PID------" >> $path_sChCkkwl/changePID.log 2>&1
#sed -i 's/5000521/4900101/g' unweighted_events.lhe
#grep 4900101 unweighted_events.lhe >> $path_sChCkkwl/changePID.log 2>&1
