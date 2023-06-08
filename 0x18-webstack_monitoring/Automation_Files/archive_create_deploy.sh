#!/usr/bin/env bash
# This bash script creates a folder and make an archive
# into it and sends it to the servers and run the
# deployment problem

# Create folder and compressed files
mkdir -p versions
tar -czvf versions/web_static_.tgz web_static
echo versions/web_static_.tgz

# Send the folder to both server
scp -r StrictHostKeyChecking=no "versions" ubuntu@34.224.95.198:~/
scp -r StrictHostKeyChecking=no "versions" ubuntu@52.87.220.62:~/

# Run the bash script on the server
ssh ubuntu@34.224.95.198 $'~/deploy_web_static_files.sh'
ssh ubuntu@52.87.220.62 $'~/deploy_web_static_files.sh'
