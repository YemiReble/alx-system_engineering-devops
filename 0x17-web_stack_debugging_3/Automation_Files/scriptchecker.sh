#!/bin/bash

# This script does the following
# Gives permission to the specified files
# Checks py file and JS file for proper file formating

# chmod u+x "$1"
# chmod u+x *.py
# semistandard "$1"
# pycodestyle "$1"
puppet-lint "$1"
# shellcheck "$1"

# For Python Script Auto formatting Unlocak this section
#autopep8 --in-place --aggressive --aggressive --recursive .
