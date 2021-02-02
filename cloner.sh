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
# Cloning repos
################################################################################

echo "Cloning git repos..."

# Full class list from A2.
declare -a REPO_URLS=("https://github.com/gituser1/reponame1.git"
...
"https://github.com/gituser2/reponame2.git")

cd "/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


for REPO in ${REPO_URLS[@]}
do
    # Clone the repos.
    echo "##################################################"
    echo ""
    echo "Cloning repo from "$REPO""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    git clone "$REPO"

    echo ""
    echo "#-------------------------------------------------"
    echo ""

done





################################################################################
# end
################################################################################

