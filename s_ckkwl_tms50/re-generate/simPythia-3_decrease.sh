#!/bin/bash
# Program:
#     This program is to do the Pythia simultaion about s-channel with CKKW-L.
#     I copy my s-ch. .cmnd https://github.com/YW-Hsiao/SVJ/blob/main/Tutorial_v2/DelPy_cmnd/rinv03/test0_2.cmnd
#     Main:numberOfEvents = 6000, Random:seed = 100
#     Merging:doKTMerging = on, Merging:Process = pp>xdxd~
#     Merging:mayRemoveDecayProducts = off
#     Merging:TMS = 50
#     LHEFInputs:nSubruns = 1, Main:subrun = 0
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/10/04
#     First release
# Version: v.1.0

# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/s_ckkwl_tms50"
path_hepmc="$path_sChCkkwl/hepmc"
path_re="$path_sChCkkwl/re-generate"
path_examples="/root/pythia8245/examples"


# Check your .cmnd file Beams:LHEF path, number of events, and random seed!!   ###
# Check you have executed "make main89"!!
echo "Start Running"
echo "date: $now"
echo "Path of script: $path_re"
echo "Path of Pythia examples main89: $path_examples"
echo "Path of .cmnd, .log and .hepmc files: $path_re"

cd $path_examples
nohup ./main89 $path_re/svj_ckkwl-3_decrease.cmnd $path_re/ckkwl-3_decrease.hepmc > $path_re/ckkwl-3_decrease.log 2>&1 &
