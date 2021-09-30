#!/bin/bash
# Program:
#     This program is use DelphesPythia8 to do the Pythia and Delphes simultaion
#     about s-channel with CKKW-L.
#     Main:numberOfEvents = 10000, Random:seed = 100
#     Merging:doKTMerging = on, Merging:Process = pp>xdxd~
#     Merging:mayRemoveDecayProducts = on
#     Merging:TMS = 20
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/09/23
#     First release
# Version: v.1.0

# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/s-channel_ckkwl-v2"
path_DP8="$path_sChCkkwl/DP8"
path_Delphes="/root/Delphes-3.4.2"


# Check your .cmnd file Beams:LHEF path, number of events, and random seed!!   ###
# Check your .tcl file  ###
echo "Start Running"
echo "date: $now"
echo "Path of scrpit: $path_DP8"
echo "Path of DelphesPythia8: $path_Delphes"
echo "Path of .cmnd, .tcl, .log, and .root files: $path_DP8"

cd $path_Delphes
nohup ./DelphesPythia8 $path_DP8/delphes_card_ATLAS.tcl $path_DP8/svj_ckkwl-2.cmnd $path_DP8/svj_ckkwl-2.root > $path_DP8/svj_ckkwl-2.log 2>&1 &
