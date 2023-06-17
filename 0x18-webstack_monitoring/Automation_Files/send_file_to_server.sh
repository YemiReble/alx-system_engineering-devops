#!/usr/bin/bash
# This bash script sends files from a Local macine to the server.

scp -r trictHostKeyChecking=no "$1" ubuntu@34.224.95.198:~/
# scp -r StrictHostKeyChecking=no "versions" ubuntu@52.87.220.62:~/
