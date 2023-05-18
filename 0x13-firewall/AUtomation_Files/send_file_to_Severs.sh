#!/usr/bin/env bash
# Bash Script that send stuffs to the servers
file="$1"
scp -r StrictHostKeyChecking=no "$file" ubuntu@34.224.95.198:~/
scp -r StrictHostKeyChecking=no "$file" ubuntu@52.87.220.62:~/
