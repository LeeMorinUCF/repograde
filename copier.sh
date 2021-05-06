#!/bin/bash

################################################################################
#
# ECP3004: Python for Business Analytics
# Shell Script for Grading Assignments
#
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business
# University of Central Florida
#
# March 9, 2021
#
################################################################################
#
# This shell script is part of a code base
# clones repos, makes modifications,
# runs scripts, uploads solutions, then pushes the changes.
# It is used for grading assignments submitted to GitHub repositories.
#
################################################################################


################################################################################
# Running scripts and storing results
################################################################################

echo "Copying files..."

A_FOLDER=AA_M_tests

FILE_IN=midterm_exam/my_midterm_module.py
FILE_OUT=midterm_exam/my_midterm_module_submitted.py

# GIT_FOLDER="/c/Users/le279259/OneDrive\ -\ University\ of\ Central\ Florida/Documents/GitHub"


declare -a REPO_NAMES=("SawmonAbossedgh-ECP3004S21"
                       "MarkAcevedo-ECP3004S21"
                       "Yasin-ECP3004S21"
                       "Haza3ECP3004"
                       "hazaa_alnasri_ECP3004"
                       "Ethan-s-ECP3004S21-solutions"
                       # "Chris-Assal-Assignment-Submission"
                       "BrandonAzevedo-ECP3004S21"
                       # "danielbenavidesecp3004"
                       "ECP3004-SP2021-Joseph-Bisa"
                       "ECP3004-Solutions"
                       "Ashley-Clerville--ecp-3004"
                       "Corbin-ECP3004S21"
                       "Deblock-ECP3004S21"
                       "Sabrina-DoriscaECP3004S21"
                       "Max-Dyell-ECP3004"
                       "Sefieisa-ECP3004"
                       "XiaoyuFu-ECP3004S21"
                       # "ryanglossECP3004S21-solutions"
                       "Luanna-ECP3004S21"
                       "Alexander-Gomez---ECP3004S21"
                       "Zheming-Han--ECP3004S21"
                       "Megan-Hoang-ECP3004S21"
                       "Carters-ECP3004-Repository"
                       "Vehle-ECP3004S21"
                       "Brandon-Juffe-ECP-3004S21-Solutions"
                       "MayaKamathECP3004S21"
                       "My-ECP3004S21-solutions"
                       "Justin-Knutson-ECP3004S21"
                       "AshleyKurtzweg-ECP3400"
                       "Summer-ECP3004S21"
                       "ZaidECP3004"
                       "Pieros-python-solutions"
                       "LP13-Firstrepository"
                       "Daniel-Quezada-ECP3004S21"
                       "RiECP3004"
                       "RoseECP3004S21"
                       "KimberlySBusinessAnalytics"
                       # "HSALMANECP3004"
                       "LisetteSoltura-ECP3004"
                       "OGBrownJesus-s-Repository-"
                       # "GadielECP3004S21"
                       "AnthonyYaghmourECP3004"
                       "SongjieYin-ECP3004S21")


# cd $GIT_FOLDER
cd "/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"

echo "The scripts in these repositories were copied successfully:" > $A_FOLDER/copy_pass.txt
echo "These repositories were missing the script:" > $A_FOLDER/copy_fail.txt

for RUN_FOLDER in ${REPO_NAMES[@]}
do
# Check for files in this repository.
echo "##################################################"
echo ""
echo "Copying files in "$RUN_FOLDER""
echo ""
echo "#-------------------------------------------------"
echo ""

cd $RUN_FOLDER

if [ -f "$FILE_IN" ]; then
echo "$FILE_IN exists in $RUN_FOLDER."
echo $RUN_FOLDER >> ../$A_FOLDER/copy_pass.txt
cp $FILE_IN $FILE_OUT
else
  echo "$FILE_IN does not exist in $RUN_FOLDER."
echo $RUN_FOLDER >> ../$A_FOLDER/copy_fail.txt
fi

# cd $GIT_FOLDER
cd "/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"

echo ""
echo "#-------------------------------------------------"
echo ""

done


################################################################################
# end
################################################################################

