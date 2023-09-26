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
# The Cloner:
# Clones a list of GitHUb repos
# 
################################################################################


################################################################################
# Set Parameters
################################################################################

# List of urls for GitHub repositories.
declare -a REPO_URLS=("https://github.com/gituser1/reponame1.git"
"..."
"https://github.com/gituser2/reponame2.git")


# Folder containing GitHub repositories.
GIT_FOLDER="/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


################################################################################
echo "Cloning git repos..."
################################################################################

cd "$GIT_FOLDER"


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

