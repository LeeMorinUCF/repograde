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
# The Runner:
# Runs scripts and stores the results
# 
################################################################################


################################################################################
# Set Parameters
################################################################################

RUN_FOLDER_NAME=name_of_folder_with_file_to_run

# Name of file with program to be run.
FILE_RUN=name_of_file_to_run.ext

# Name of file for output from program to be run.
FILE_RUN_OUT=name_of_file_to_run.out


# Folder for output of this script.
OUT_FOLDER=name_of_folder_for_output

# Files for output of results.
RUN_PASS_FILE=name_of_run_pass_file.txt
RUN_FAIL_FILE=name_of_run_fail_file.txt


# List of names of GitHub repos.
declare -a REPO_NAMES=("name_of_repo_1"
"name_of_repo_2"
"name_of_repo_3"
"name_of_repo_4")


# Folder containing GitHub repositories.
GIT_FOLDER="/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


################################################################################
echo "Running files..."
################################################################################

cd "$GIT_FOLDER"


echo "The scripts in these repositories ran successfully:" > $OUT_FOLDER/$RUN_PASS_FILE
echo "These repositories were missing the script:" > $OUT_FOLDER/$RUN_FAIL_FILE

for RUN_REPO_NAME in ${REPO_NAMES[@]}
do
    # Check for files in this repository.
    echo "##################################################"
    echo ""
    echo "Running files in "$RUN_REPO_NAME""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cd $RUN_REPO_NAME

    if [ -f "$RUN_FOLDER_NAME/$FILE_RUN" ]; then
        echo "$RUN_FOLDER_NAME/$FILE_RUN exists in $RUN_REPO_NAME."
        echo $RUN_REPO_NAME >> "$GIT_FOLDER"/$OUT_FOLDER/$RUN_PASS_FILE
        # cd to that folder.
        cd $RUN_FOLDER_NAME
        # Run the file from within that folder.
        python $FILE_RUN > $FILE_RUN_OUT 2>&1
        echo "Output from $FILE_RUN in $RUN_REPO_NAME:"
        cat $FILE_RUN_OUT
    else
        echo "$FILE_RUN does not exist in $RUN_REPO_NAME."
        echo $RUN_REPO_NAME >> "$GIT_FOLDER"/$OUT_FOLDER/$RUN_FAIL_FILE
    fi

    cd "$GIT_FOLDER"
    

    echo ""
    echo "#-------------------------------------------------"
    echo ""

done


################################################################################
# end
################################################################################

