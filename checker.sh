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
# February 2, 2021
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
# Checking for existence of files
################################################################################

echo "Checking for files..."

FILE=assignment_02/my_functions.py

declare -a REPO_NAMES=("reponame1"
"..."
"reponame2")

cd "/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"

for CHECK_FOLDER in ${REPO_NAMES[@]}
do
    # Check for files in this repository.
    echo "##################################################"
    echo ""
    echo "Checking files in "$CHECK_FOLDER""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cd $CHECK_FOLDER

    if [ -f "$FILE" ]; then
        echo "$FILE exists in $CHECK_FOLDER."
    else
        echo "$FILE does not exist in $CHECK_FOLDER."
    fi

    cd ..

    echo ""
    echo "#-------------------------------------------------"
    echo ""

done


################################################################################
# end
################################################################################

