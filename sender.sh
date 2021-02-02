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
# Copying files to repos for testing scripts.
################################################################################

echo "Sending files to repos..."

FILE=ECP3004S21/assignment_02/my_functions_testing.py

declare -a REPO_NAMES=("reponame1"
"..."
"reponame2")

cd "/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"

for REPO_FOLDER in ${REPO_NAMES[@]}
do
    # Send files to repos.
    echo "##################################################"
    echo ""
    echo "Sending files to "$REPO_FOLDER""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cp -r ../QMB6358F20/assignment_04/solutions "$REPO_FOLDER"

    echo ""
    echo "#-------------------------------------------------"
    echo ""


done



################################################################################
# end
################################################################################

