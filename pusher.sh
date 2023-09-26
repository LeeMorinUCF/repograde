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
# The Pusher:
# Pushes changes to repos
# 
################################################################################


################################################################################
# Set Parameters
################################################################################

# Commit message for changes pushed to repos.
MESSAGE="Comments on Assignment"


# List of names of GitHub repos.
declare -a REPO_NAMES=("name_of_repo_1"
"name_of_repo_2"
"name_of_repo_3"
"name_of_repo_4")


# Folder containing GitHub repositories.
GIT_FOLDER="/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


################################################################################
echo "Pushing changes to repos..."
################################################################################

cd "$GIT_FOLDER"

for PUSH_REPO_NAME in ${REPO_NAMES[@]}
do
    # Push corrections and comments to repos.
    echo "##################################################"
    echo ""
    echo "Pushing updates to "$PUSH_REPO_NAME""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cd "$PUSH_REPO_NAME"
    git status
    git add .
    git status
    git commit -m "$MESSAGE"
    git push origin main

    cd "$GIT_FOLDER"
    
    echo ""
    echo "#-------------------------------------------------"
    echo ""


done


################################################################################
# end
################################################################################
