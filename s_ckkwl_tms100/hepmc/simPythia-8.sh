#!/bin/bash
# Program:
#     This program is to do the Pythia simultaion about s-channel with CKKW-L.
#     I copy my s-ch. .cmnd https://github.com/YW-Hsiao/SVJ/blob/main/Tutorial_v2/DelPy_cmnd/rinv03/test0_2.cmnd
#     Main:numberOfEvents = 10000, Random:seed = 100
#     Merging:doKTMerging = on, Merging:Process = pp>{xd,4900101}{xd~,-4900101}
#     Merging:mayRemoveDecayProducts = on
#     Merging:TMS = 100
#     LHEFInputs:nSubruns = 1, Main:subrun = 0
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/10/01
#     First release
# Version: v.1.0

# Setup environment and variables
now=$(date)
path_sChCkkwl="/youwei_home/SVJ_CKKWL/s_ckkwl_tms100"
path_hepmc="$path_sChCkkwl/hepmc"
path_examples="/root/pythia8245/examples"


# Check your .cmnd file Beams:LHEF path, number of events, and random seed!!   ###
# Check you have executed "make main89"!!
echo "Start Running"
echo "date: $now"
echo "Path of script: $path_hepmc"
echo "Path of Pythia examples main89: $path_examples"
echo "Path of .cmnd, .log, and .hepmc files: $path_hepmc"

cd $path_examples
nohup ./main89 $path_hepmc/svj_ckkwl-8.cmnd $path_hepmc/ckkwl-8.hepmc > $path_hepmc/ckkwl-8.log 2>&1 &
