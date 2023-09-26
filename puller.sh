#!/bin/bash

################################################################################
#
# Repograde:
# Shell Scripts for Grading Assignments
#
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business
# University of Central Florida
#
# September 26, 2023
#
################################################################################
#
# This shell script is part of a code base that
# clones repos, makes modifications,
# runs scripts, uploads solutions, then pushes the changes.
# It is used for grading assignments submitted to GitHub repositories.
#
################################################################################
# 
# The Puller:
# Pulls changes from GitHub repos
# 
################################################################################


################################################################################
# Set Parameters
################################################################################

# List of names of GitHub repos.
declare -a REPO_NAMES=("name_of_repo_1"
"name_of_repo_2"
"name_of_repo_3"
"name_of_repo_4")


# Folder containing GitHub repositories.
GIT_FOLDER="/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


################################################################################
echo "Pulling changes from repos..."
################################################################################

cd "$GIT_FOLDER"

for PULL_REPO_NAME in ${REPO_NAMES[@]}
do
    # Append the current dataset to the full dataset.
    echo "##################################################"
    echo ""
    echo "Pulling updates to "$PULL_REPO_NAME""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cd "$PULL_REPO_NAME"
    git pull origin main

    cd "$GIT_FOLDER"
    
    
    echo ""
    echo "##################################################"
    echo ""

done




################################################################################
# end
################################################################################

