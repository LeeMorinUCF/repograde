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
# The Cleaner:
# Removes unwanted files
# 
################################################################################


################################################################################
# Set Parameters
################################################################################

# Name of file to remove.
FILE=folder_in_repo/file_to_remove.ext


# Folder for output of this script.
OUT_FOLDER=name_of_folder_for_output

# Files for output of results.
CLEAN_PASS_FILE=name_of_clean_pass_file.txt
CLEAN_FAIL_FILE=name_of_clean_fail_file.txt


# List of names of GitHub repos.
declare -a REPO_NAMES=("name_of_repo_1"
"name_of_repo_2"
"name_of_repo_3"
"name_of_repo_4")

# Folder containing GitHub repositories.
GIT_FOLDER="/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


################################################################################
echo "Removing files..."
################################################################################


cd "$GIT_FOLDER"


echo "These repositories had the script:" > $OUT_FOLDER/$CLEAN_PASS_FILE
echo "These repositories were missing the script:" > $OUT_FOLDER/$CLEAN_FAIL_FILE

for CLEAN_REPO_NAME in ${REPO_NAMES[@]}
do
    # Remove files in this repository.
    echo "##################################################"
    echo ""
    echo "Removing files in "$CLEAN_REPO_NAME""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cd $CLEAN_REPO_NAME

    if [ -f "$FILE" ]; then
        echo "$FILE exists in $CLEAN_REPO_NAME."
        rm $FILE
        echo $CLEAN_REPO_NAME >> ../$OUT_FOLDER/$CLEAN_PASS_FILE
    else
        echo "$FILE does not exist in $CLEAN_REPO_NAME."
        echo $CLEAN_REPO_NAME >> ../$OUT_FOLDER/$CLEAN_FAIL_FILE
    fi

    cd "$GIT_FOLDER"
    
    echo ""
    echo "#-------------------------------------------------"
    echo ""

done


################################################################################
# end
################################################################################

