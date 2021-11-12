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
path_sChCkkwl="/youwei_home/SVJ_CKKWL/PYTHIA_Experts_tms/s_ckkwl_tms20/hepmc_diff_TMS"
path_examples="/root/pythia8245/examples"
tms=("10" "30" "50")


echo "Start Running"
echo "date: $now"

for ((i=0; i < ${#tms[@]}; i++)); do
    echo $i ${tms[$i]}
done
echo "----------"

cd $path_examples
pwd
for ((i=0; i < ${#tms[@]}; i++)); do
    cd $path_sChCkkwl
    echo $i "----------"
    pwd
    echo Execute $path_sChCkkwl/svj_ckkwl-4_tms${tms[$i]}.cmnd
    echo Execute $path_sChCkkwl/svj_ckkwl-8_tms${tms[$i]}.cmnd
done
