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
# The Sender:
# Copies files to repos for testing scripts
# 
################################################################################


################################################################################
# Set Parameters
################################################################################


# Folder to copy from.
FROM_FOLDER=name_of_folder_to_copy_from

# Folder to send the copy to.
REPO_SEND_FOLDER=name_of_folder_to_copy_to

# File or folder to send the copy to.
SEND_FILE=name_of_file_to_send.ext

# List of names of GitHub repos.
declare -a REPO_NAMES=("name_of_repo_1"
"name_of_repo_2"
"name_of_repo_3"
"name_of_repo_4")


# Folder containing GitHub repositories.
GIT_FOLDER="/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"


################################################################################
echo "Sending files to repos..."
################################################################################


cd "$GIT_FOLDER"


for SEND_REPO_NAME in ${REPO_NAMES[@]}
do
    # Send files to repos.
    echo "##################################################"
    echo ""
    echo "Sending files to "$SEND_REPO_NAME""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cp -r $FROM_FOLDER/$SEND_FILE $SEND_REPO_NAME/$REPO_SEND_FOLDER/$SEND_FILE

    echo ""
    echo "#-------------------------------------------------"
    echo ""


done



################################################################################
# end
################################################################################

