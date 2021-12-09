#!/bin/bash
# Program:
#     This program is to do the MadGraph simultaion about s-channel with CKKW-L jet merging.
#     Test sample for closing decay channels of 4900211 & 4900213.
#     Zpxdxdx.txt is with nevents 10000, ECM=14 TeV
#     ickkw 0, xqcut 0.0, ktdurham 70
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/12/06
#     First release
# Version: v.1.0

# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/Test/without_decays_211_213_tms70"
path_MG5v273="/root/MG5_aMC_v2_7_3"  # Where is your mg5_aMC


# Check your .txt file output & launch path, nevents, and ECM!!   ###
echo "Start Running"
echo "date: $now"
echo "Path of scrpit: $path_sChCkkwl"
echo "Path of MG5: $path_MG5v273"
echo "Path of .txt and .log file: $path_sChCkkwl"

cd $path_MG5v273
nohup ./bin/mg5_aMC $path_sChCkkwl/Zpxdxdx.txt > $path_sChCkkwl/Zpxdxdx.log 2>&1 &