#!/bin/sh
# Author: Victor Calderon
#
# Description:  Copies the notebook for a given week.
# 
# How to run:    ./nb_copy.sh week_num
#
# Parameters
# ----------
# week_num: number of the week of the iPython notebook to copy

# Parameters
week_num=$1
nb_path='./notebooks'
nb_copy_path='./notebooks_notes'
# Run commands
# git pull;

echo "cp -rp ${np_path}/Week_${week_num}/ ${nb_copy_path}"
cp -rp ${np_path}/Week_${week_num}/ ${nb_copy_path}
