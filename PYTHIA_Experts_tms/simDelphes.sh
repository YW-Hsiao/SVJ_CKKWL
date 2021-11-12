#!/bin/bash
# Program:
#     This program is to do the Delphes simultaion about s-channel with CKKW-L.
#     I copy the /root/Delphes-3.4.2/cards/delphes_card_ATLAS.tcl
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/10/26
#     First release
# Version: v.1.0


# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/PYTHIA_Experts_tms"
path_Delphes="/root/Delphes-3.4.2"
tms=("10" "20" "30" "50" "70" "100" "130")


# Check your .tcl file
# Check you have executed "make"!!
echo "Start Running .sh"
echo "date: $now"
echo "Path of script: $path_sChCkkwl"
echo "Path of Delphes: $path_Delphes"
#echo "Path of .hepmc file: $path_hepmc"
#echo "Path of .tcl, .log, and .root files: $path_root"

cd $path_Delphes
pwd
for ((i=0; i < ${#tms[@]}; i++)); do
    path_hepmc="$path_sChCkkwl/s_ckkwl_tms${tms[$i]}/hepmc"
    path_root="$path_sChCkkwl/s_ckkwl_tms${tms[$i]}/root"
    echo $i "----------"
    echo $path_hepmc/ckkwl-4.hepmc
    nohup ./DelphesHepMC $path_sChCkkwl/delphes_card_ATLAS.tcl $path_root/svj_s_ckkwl-4.root $path_hepmc/ckkwl-4.hepmc > $path_root/svj_s_ckkwl-4.log 2>&1 &
    echo $path_hepmc/ckkwl-8.hepmc
    nohup ./DelphesHepMC $path_sChCkkwl/delphes_card_ATLAS.tcl $path_root/svj_s_ckkwl-8.root $path_hepmc/ckkwl-8.hepmc > $path_root/svj_s_ckkwl-8.log 2>&1 &
    echo $path_sChCkkwl/delphes_card_ATLAS.tcl
done
