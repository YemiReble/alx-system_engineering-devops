#!/usr/bin/env bash
# This Bash Script program deploys static web files
# This is done to mimic the fabfile that was said to be
# Created to automate the deloyment of my static files
# This bash file can only be run on the Terget server
# unlike the fabfile that can be run on the client server
# directly.

# ========================================================

# env.hosts = ['34.224.95.198', '52.87.220.62']
# env.rsa = '~/.ssh/id_rsa'
# env.user = 'ubuntu'

# Depoying web static

# Auto date Ganerate
date="$(date +%Y%m%d%H%M%s)"
# uploading archive into /tmp dir
cp -r "$1" /tmp/

# Creating destination dir
sudo mkdir -p /data/web_static/releases/web_static_"$date"

# Uncompressing archive folder
tar -xzf /tmp/web_static_"$date".tgz -C /data/web_static/releases/web_static_"$date"/

# Delete the archive from the web server /tmp/
sudo rm /tmp/web_static_"$date".tgz

# Move extract files to the main folder
sudo mv /data/web_static/releases/web_static_"$date"/web_static/* \
    /data/web_static/releases/web_static_"$date"/

# Remove unused empty web_static dir
sudo rm -rf /data/web_static/releases/web_static_"$date"/web_static

# Delete the symbolic link /data/web_static/current from the web server
sudo rm -rf /data/web_static/current

# Create a new the symbolic link /data/web_static/current on the web server
sudo ln -sfn /data/web_static/releases/web_static_"$date"/ \
    /data/web_static/current


# For Visibility
# End of File (EOF)
