#!/bin/sh
# Author: Victor Calderon
#
# Description:  Copies the notebook for a given week.
# 
# How to run:    ./nb_copy.sh week_num ow_opt
#
# Parameters
# ----------
# - week_num: number of the week of the iPython notebook to copy
# - ow_opt: if "y", it will overwrite the notebooks in `nb_copy_path'

# Constants
nb_path='./notebooks'
nb_copy_path='./notebooks_notes'

# Parameters
week_num=$1
ow_opt=$2

# Reading in Parameters
if  [ "$1" == "-h" ] || \
    [ "$#" -eq "0"  ]; then
    echo "How to run:    ./nb_copy.sh week_num overwrite_opt"
    echo "  * week_num: number of the week of the iPython notebook to copy"
    echo "  * ow_opt: if 'true', it will overwrite the notebooks in 'nb_copy_path'"
else
    echo "git pull"
    git pull
    if [ "$#" -ge "1" ] && \
       [ "$ow_opt" == "y" ]; then
        echo "cp  -rp ${nb_path}/Week_${week_num} ${nb_copy_path}/"
        cp  -rp ${nb_path}/Week_${week_num} ${nb_copy_path}/
    fi
    echo "jupyter notebook ${nb_copy_path}/Week_${week_num}/*.ipynb"
    jupyter notebook ${nb_copy_path}/Week_${week_num}/*.ipynb
fi