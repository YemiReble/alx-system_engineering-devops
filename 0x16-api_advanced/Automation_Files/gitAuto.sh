#!/usr/bin/env bash

# GitHub/Git Bash Authomation.
# This bash script helps you add and commit your files
# To github

# Documentation
# ============================================================
# Usage: ./gitAuto.sh file_name your_commit_message
# You can only add one file at a time
# You can initially add all files if you want using '.'
# Like: ./gitAuto.sh . "commit_message"
# You cannot use it like the below demonstration
# ./gitAuto.sh file1 file2 file3 and so on is not acceptable
# arg1 = "$1"
# arg2 = "$2"
# Copyright of YemiDev
# Version -v1 ((Old): No else statement, commands are above)
# Version -v2.5
# ============================================================


if [ -z "$1" ] # || [ -z "$2" ]
then
	echo "Please add a file you want to commit"
	echo "Kindly use the instruction below"
	echo "Useage: ./gitAuto.sh <file_name> <your_commit_message>"

elif [ -z "$2" ]
then
    git add "$1"
    git commit -m "Version Update"
    git push

else
    git add "$1"
    git commit -m "$2"
    git push
fi
