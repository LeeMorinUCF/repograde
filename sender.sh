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
# Copying files to repos for testing scripts.
################################################################################

echo "Sending files to repos..."

# Folder to copy from.
A_FOLDER=A4_tests
# Folder to copy to.
REPO_A_FOLDER=assignment_04
# File or folder to copy.
# FILE=my_A3_functions_test.py
# FILE=my_A4_functions_doctest.py
FILE=my_A4_functions_examples.py
# FILE=my_A3_functions_soln.py
# FILE=my_A3_functions_soln_out.txt
# FILE=my_A3_functions_soln_test.py
# FILE=my_A3_functions_soln_test_out.txt
#
# FILE=my_functions_test_2.py
# FILE=my_functions_soln.py
# FILE=my_functions_soln_test.py


declare -a REPO_NAMES=("SawmonAbossedgh-ECP3004S21"
"MarkAcevedo-ECP3004S21"
"Yasin-ECP3004S21"
"Haza3ECP3004"
"hazaa_alnasri_ECP3004"
"Ethan-s-ECP3004S21-solutions"
# "Chris-Assal-Assignment-Submission"
# "Braze76/ECP3004S21"
# "danielbenavidesecp3004"
"ECP3004-SP2021-Joseph-Bisa"
"ECP3004-Solutions"
"Ashley-Clerville--ecp-3004"
"Corbin-ECP3004S21"
"Deblock-ECP3004S21"
"Sabrina-DoriscaECP3004S21"
"Max-Dyell-ECP3004"
"Sefieisa-ECP3004"
"XiaoyuFu-ECP3004S21"
# "ryanglossECP3004S21-solutions"
"Luanna-ECP3004S21"
"Alexander-Gomez---ECP3004S21"
"Zheming-Han--ECP3004S21"
"Megan-Hoang-ECP3004S21"
"Carters-ECP3004-Repository"
# "Vehle-ECP3004S21"
"Brandon-Juffe-ECP-3004S21-Solutions"
"MayaKamathECP3004S21"
# "My-ECP3004S21-solutions"
"Justin-Knutson-ECP3004S21"
"AshleyKurtzweg-ECP3400"
"Summer-ECP3004S21"
"ZaidECP3004"
"Pieros-python-solutions"
# "LP13-Firstrepository"
"Daniel-Quezada-ECP3004S21"
"RiECP3004"
"RoseECP3004S21"
"KimberlySBusinessAnalytics"
"HSALMANECP3004"
"LisetteSoltura-ECP3004"
"OGBrownJesus-s-Repository-"
# "GadielECP3004S21"
"AnthonyYaghmourECP3004"
"SongjieYin-ECP3004S21")

cd "/c/Users/le279259/OneDrive - University of Central Florida/Documents/GitHub"

for REPO_FOLDER in ${REPO_NAMES[@]}
do
    # Send files to repos.
    echo "##################################################"
    echo ""
    echo "Sending files to "$REPO_FOLDER""
    echo ""
    echo "#-------------------------------------------------"
    echo ""

    cp -r $A_FOLDER/$FILE $REPO_FOLDER/$REPO_A_FOLDER/$FILE

    echo ""
    echo "#-------------------------------------------------"
    echo ""


done



################################################################################
# end
################################################################################

