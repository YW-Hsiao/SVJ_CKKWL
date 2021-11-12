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
path_examples="/root/pythia8245/examples"
tms=("10" "20" "30" "50" "70" "100" "130")


echo "Start Running"
echo "date: $now"

for ((i=0; i < ${#tms[@]}; i++)); do
    echo $i ${tms[$i]}
done
echo "----------"

cd $path_examples
pwd
for ((i=0; i < ${#tms[@]}; i++)); do
    path_hepmc="$path_sChCkkwl/s_ckkwl_tms${tms[$i]}/hepmc"
    cd $path_hepmc
    echo $i "----------"
    pwd
    echo $path_hepmc/svj_ckkwl-4.cmnd
    echo $path_hepmc/svj_ckkwl-8.cmnd
done
