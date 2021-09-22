#!/bin/bash
# Program:
#     This program is to do the MadGraph simultaion about s-channel with CKKW-L jet merging.
#     Zpxdxdx.txt is with nevents 10000, ECM=14 TeV, iseed 1000
#     ickkw 0, xqcut 0.0, ktdurham 20
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/06/17
#     First release
# Version: v.1.0


# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/s-channel_ckkwl-v3"
path_MG5v273="/root/MG5_aMC_v2_7_3"  # Where is your mg5_aMC


# Check your .txt file output & launch path, nevents, ECM, and iseed!!   ###
echo "Start Running .sh"
echo "date: $now"
echo "Path of scrpit: $path_sChCkkwl"
echo "Path of MG5: $path_MG5v273"
echo "Path of .txt and .log file: $path_sChCkkwl"

cd $path_MG5v273
nohup ./bin/mg5_aMC $path_sChCkkwl/Zpxdxdx.txt > $path_sChCkkwl/Zpxdxdx.log 2>&1 &