#!/bin/bash
# Program:
#     This program is to do the analysis about Python script analysis-1.py.
#     rinv=0.3, Lambda_d=5
#     
# Author: You-Wei Hsiao
# Institute: Department of Physics, National Tsing Hua University, Hsinchu, Taiwan
# Mail: hsiao.phys@gapp.nthu.edu.tw
# History: 2021/11/03
#     First release
# Version: v.1.0


# Setup environment and variables
today=$(date +"%Y/%m/%d")
path_sChCkkwl="/youwei_home/SVJ_CKKWL/PYTHIA_Experts_tms"
path_diff_tms="$path_sChCkkwl/s_ckkwl_tms20"
path_python_script="/youwei_home/MyHEPTools/svj_analysis"
python_script="analysis-1.py"
rinv=0.3
Lambdad=5
# tms=("10" "20" "30" "50" "70" "100" "130" "50_iseed" "50_iseed2" "70_iseed")
tms=("10" "30" "50")

# Check your .root file path and all Python parameters
echo "Date: $(date)"
echo "Start Running ktdurham != TMS"
echo "Path of the shell script: $path_sChCkkwl"
echo "Path of the Python script: $path_python_script"

echo "Analyze the rinv = $rinv and Lambda_d = $Lambdad data using the $python_script."
for ((i=0; i < ${#tms[@]}; i++)); do
    path_data="$path_diff_tms/root_diff_TMS"
    path_output="$path_diff_tms/Analysis_diff_TMS"
    file_data_4="svj_s_ckkwl-4_tms${tms[$i]}.root"
    file_data_8="svj_s_ckkwl-8_tms${tms[$i]}.root"
    file_log_4="ana1_rinv3_Lambdad5_4_tms${tms[$i]}.log"
    file_log_8="ana1_rinv3_Lambdad5_8_tms${tms[$i]}.log"
    version_4_diff="4_tms${tms[$i]}"
    version_8_diff="8_tms${tms[$i]}"
    echo $i "------------"
    echo "Path of the output data: $path_output"
    echo Analyze $file_data_4
    nohup python3 $path_python_script/analysis-1.py $path_data/$file_data_4 0.4 -1 0 2 0 440 60 1.2 0 0 10000 $path_output $rinv $Lambdad $version_4_diff > $path_output/$file_log_4 2>&1 &
    echo Analyze $file_data_8
    nohup python3 $path_python_script/analysis-1.py $path_data/$file_data_8 0.4 -1 0 2 0 440 60 1.2 0 0 10000 $path_output $rinv $Lambdad $version_8_diff > $path_output/$file_log_8 2>&1 &
done

# python3 $path_python_script/analysis-1.py $path_data/svj_s_ckkwl-4.root 0.4 -1 0 2 0 440 60 1.2 0 0 10000 $path_output $rinv $Lambdad $version > $path_output/ana1_rinv3_Lambdad5_1.log 2>&1
echo "============"

echo "The end of the shell script."
echo "Date: $(date)"