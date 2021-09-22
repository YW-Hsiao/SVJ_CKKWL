#!/bin/bash
# Program:
#     This program is to do the Delphes simultaion about s-channel with CKKW-L.
#     I copy the /root/Delphes-3.4.2/cards/delphes_card_ATLAS.tcl
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/06/19
#     First release
# Version: v.1.0


# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/s-channel_ckkwl-v2"
path_hepmc="$path_sChCkkwl/hepmc"
path_root="$path_sChCkkwl/root"
path_Delphes="/root/Delphes-3.4.2"


# Check your .tcl file
# Check you have executed "make"!!
echo "Start Running .sh"
echo "date: $now"
echo "Path of script: $path_root"
echo "Path of Delphes: $path_Delphes"
echo "Path of .hepmc file: $path_hepmc"
echo "Path of .tcl, .log, and .root files: $path_root"

cd $path_Delphes
nohup ./DelphesHepMC $path_root/delphes_card_ATLAS.tcl $path_root/svj_s_ckkwl-10.root $path_hepmc/ckkwl-10.hepmc > $path_root/svj_s_ckkwl-10.log 2>&1 &