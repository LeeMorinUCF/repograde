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
# The Checker:
# Checks for existence of files
# 
################################################################################


################################################################################
# Set Parameters
################################################################################

# Name of file to check for.
CHECK_FILE=folder_in_repo/file_to_look_for.ext

# Folder for output of this script.
OUT_FOLDER=name_of_folder_for_output

# Files for output of results.
CHECK_PASS_FILE=name_of_check_pass_file.txt
CHECK_FAIL_FILE=name_of_check_fail_file.txt

# List of names of GitHub repos.
declare -a REPO_NAMES=("name_of_repo_1"
"name_of_repo_2"
"name_of_repo_3"
"name_of_repo_4")


# Folder containing GitHub repositories.
GIT_FOLDER="/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


################################################################################
echo "Checking for files..."
################################################################################

cd "$GIT_FOLDER"

echo "Checking for script $CHECK_FILE ..." > $OUT_FOLDER/$CHECK_PASS_FILE
echo "" >> $OUT_FOLDER/$CHECK_PASS_FILE
echo "These repositories had the script:" >> $OUT_FOLDER/$CHECK_PASS_FILE
echo "" >> $OUT_FOLDER/$CHECK_PASS_FILE

echo "Checking for script $CHECK_FILE ..." > $OUT_FOLDER/$CHECK_FAIL_FILE
echo "" >> $OUT_FOLDER/$CHECK_FAIL_FILE
echo "These repositories were missing the script:" >> $OUT_FOLDER/$CHECK_FAIL_FILE
echo "" >> $OUT_FOLDER/$CHECK_FAIL_FILE

for CHECK_REPO_NAME in ${REPO_NAMES[@]}
do
    # Check for files in this repository.
    echo "##################################################"
    echo ""
    echo "Checking files in "$CHECK_REPO_NAME""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cd $CHECK_REPO_NAME

    if [ -f "$CHECK_FILE" ]; then
        echo "$CHECK_FILE exists in $CHECK_REPO_NAME."
        echo $CHECK_REPO_NAME >> ../$OUT_FOLDER/$CHECK_PASS_FILE
    else
        echo "$CHECK_FILE does not exist in $CHECK_REPO_NAME."
        echo $CHECK_REPO_NAME >> ../$OUT_FOLDER/$CHECK_FAIL_FILE
    fi

    cd "$GIT_FOLDER"
    
    echo ""
    echo "#-------------------------------------------------"
    echo ""

done


################################################################################
# end
################################################################################

