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
# Pushing changes to repos
################################################################################

echo "Pushing changes to repos..."

MESSAGE="Testing script for Assignment 2"
# MESSAGE="Solutions and sample scripts for Assignment 2"

declare -a REPO_NAMES=("reponame1"
"..."
"reponame2")


cd "/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"

for REPO_FOLDER in ${REPO_NAMES[@]}
do
    # Push corrections and comments to repos.
    echo "##################################################"
    echo ""
    echo "Pushing updates to "$REPO_FOLDER""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cd ../"$REPO_FOLDER"
    git status
    git add .
    git status
    git commit -m "$MESSAGE"
    git push origin main

    echo ""
    echo "#-------------------------------------------------"
    echo ""


done


################################################################################
# end
################################################################################
