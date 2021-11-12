#!/bin/bash
# Program:
#     This program is to do the analysis about Python script analysis-1.py.
#     rinv=0.3, Lambda_d=5
#     
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/11/02
#     First release
# Version: v.1.0


# Setup environment and variables
today=$(date +"%Y/%m/%d")
path_sChCkkwl="/youwei_home/SVJ_CKKWL/PYTHIA_Experts_tms"
path_python_script="/youwei_home/MyHEPTools/svj_analysis"
python_script="analysis-1.py"
rinv=0.3
Lambdad=5
version_4=4
version_8=8
tms=("10" "20" "30" "50" "70" "100" "130" "50_iseed" "50_iseed2" "70_iseed")

# Check your .root file path and all Python parameters
echo "Date: $(date)"
echo "Start Running ktdurham = TMS"
echo "Path of the shell script: $path_sChCkkwl"
echo "Path of the Python script: $path_python_script"

echo "Analyze the rinv = $rinv and Lambda_d = $Lambdad data using the $python_script."
for ((i=0; i < ${#tms[@]}; i++)); do
    path_data="$path_sChCkkwl/s_ckkwl_tms${tms[$i]}/root"
    path_output="$path_sChCkkwl/s_ckkwl_tms${tms[$i]}/Analysis"
    echo $i "------------"
    echo "Path of the output data: $path_output"
    echo Analyze $path_data/svj_s_ckkwl-4.root
#     nohup python3 $path_python_script/analysis-1.py $path_data/svj_s_ckkwl-4.root 0.4 -1 0 2 0 440 60 1.2 0 0 10000 $path_output $rinv $Lambdad $version_4 > $path_output/ana1_rinv3_Lambdad5_4.log 2>&1 &
    echo nh python3 $path_python_script/analysis-1.py $path_data/svj_s_ckkwl-4.root 0.4 -1 0 2 0 440 60 1.2 0 0 10000 $path_output $rinv $Lambdad $version_4
    echo Analyze $path_data/svj_s_ckkwl-8.root
#     nohup python3 $path_python_script/analysis-1.py $path_data/svj_s_ckkwl-8.root 0.4 -1 0 2 0 440 60 1.2 0 0 10000 $path_output $rinv $Lambdad $version_8 > $path_output/ana1_rinv3_Lambdad5_8.log 2>&1 &
    echo nh python3 $path_python_script/analysis-1.py $path_data/svj_s_ckkwl-8.root 0.4 -1 0 2 0 440 60 1.2 0 0 10000 $path_output $rinv $Lambdad $version_8
done

# python3 $path_python_script/analysis-1.py $path_data/svj_s_ckkwl-4.root 0.4 -1 0 2 0 440 60 1.2 0 0 10000 $path_output $rinv $Lambdad $version > $path_output/ana1_rinv3_Lambdad5_1.log 2>&1
echo "============"

echo abc
echo abc &
echo xyz
# echo cannot include &, it will jump to next line.

echo "The end of the shell script."
echo "Date: $(date)"