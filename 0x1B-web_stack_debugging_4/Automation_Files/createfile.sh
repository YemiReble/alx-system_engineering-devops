#!/usr/bin/env bash

# A Bash Script that creates a file, gives it
# permission and opens it.

touch "$1"
chmod u+x "$1"
vi "$1"
