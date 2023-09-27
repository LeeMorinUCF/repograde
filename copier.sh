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
# The Copier:
# Makes a copy of a file in the same folder
# 
################################################################################


################################################################################
# Set Parameters
################################################################################

# File in repo to copy.
FILE_IN=Folder_name_in_repo/file_name_to_copy.ext

# New name for copy of file.
FILE_OUT=Folder_name_in_repo/file_name_of_new_copy.ext


# Folder for output of this script.
OUT_FOLDER=name_of_folder_for_output

# Files for output of results.
COPY_PASS_FILE=copy_pass_file_Q1.txt
COPY_FAIL_FILE=copy_fail_file_Q1.txt


# List of names of GitHub repos.
declare -a REPO_NAMES=("name_of_repo_1"
"name_of_repo_2"
"name_of_repo_3"
"name_of_repo_4")

# Folder containing GitHub repositories.
GIT_FOLDER="/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


################################################################################
echo "Copying files..."
################################################################################

cd "$GIT_FOLDER"


echo "The scripts in these repositories were copied successfully:" > $OUT_FOLDER/$COPY_PASS_FILE
echo "These repositories were missing the script:" > $OUT_FOLDER/$COPY_FAIL_FILE

for COPY_REPO_NAME in ${REPO_NAMES[@]}
    do
    # Check for files in this repository.
    echo "##################################################"
    echo ""
    echo "Copying files in "$COPY_REPO_NAME""
    echo ""
    echo "#-------------------------------------------------"
    echo ""
    
    cd $COPY_REPO_NAME
    
    if [ -f "$FILE_IN" ]; then
        echo "$FILE_IN exists in $COPY_REPO_NAME."
        echo $COPY_REPO_NAME >> "$GIT_FOLDER"/$OUT_FOLDER/$COPY_PASS_FILE
        cp $FILE_IN $FILE_OUT
    else
        echo "$FILE_IN does not exist in $COPY_REPO_NAME."
        echo $COPY_REPO_NAME >> "$GIT_FOLDER"/$OUT_FOLDER/$COPY_FAIL_FILE
    fi
    
    cd "$GIT_FOLDER"
    
    
    echo ""
    echo "#-------------------------------------------------"
    echo ""
    
done


################################################################################
# end
################################################################################

