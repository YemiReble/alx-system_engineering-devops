#!/usr/bin/env bash
# This bash script creates a folder and creates an
# archive.tgz in it and trnafer the created archive
# to my server.

mkdir -p versions

tar -czvf versions/web_static_.tgz web_static
echo versions/web_static_.tgz

# Sending Folder to servers
scp -r StrictHostKeyChecking=no "versions" ubuntu@34.224.95.198:~/
scp -r StrictHostKeyChecking=no "versions" ubuntu@52.87.220.62:~/

#tar -czvf versions/web_static_"$(date +%Y%m%d%H%M%s)".tgz web_static
#echo versions/web_static_"$(date +%Y%m%d%H%M%s)".tgz
