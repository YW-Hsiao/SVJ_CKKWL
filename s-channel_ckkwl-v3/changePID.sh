#!/bin/bash
# Program:
#     This program is to change PID for s-channel.
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/06/17
#     First release
# Version: v.1.0


# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/s-channel_ckkwl-v3"
path_lhe="$path_sChCkkwl/s/Events/run_01"


echo "Start Running .sh"
echo "date: $now"
echo "Path of scrpit: $path_sChCkkwl"
echo "Path of .log file: $path_sChCkkwl"

cd $path_lhe
gzip -d unweighted_events.lhe.gz > $path_sChCkkwl/changePID.log 2>&1
echo "------Change PID------" >> $path_sChCkkwl/changePID.log 2>&1
sed -i 's/5000521/4900101/g' unweighted_events.lhe
grep 4900101 unweighted_events.lhe >> $path_sChCkkwl/changePID.log 2>&1
