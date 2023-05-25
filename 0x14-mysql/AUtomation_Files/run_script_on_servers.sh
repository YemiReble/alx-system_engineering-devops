#!/usr/bin/env bash
# This bash script creates a folder and make an archive
# into it and sends it to the servers and run the
# deployment problem


file="$1"

if [ -z "$1" ]; then
    echo "Usage: ./run_script_on_servers.sh <script name>"
    echo "Make sure to add script name as an argument"

else
    # Create folder and compressed files
    scp -r StrictHostKeyChecking=no "$file" ubuntu@34.224.95.198:~/
    scp -r StrictHostKeyChecking=no "$file" ubuntu@52.87.220.62:~/
    echo "File has been transfered to you server successfully! :)"

    # Run the bash script on the server
    #ssh ubuntu@34.224.95.198 $'~/"$file"'
    #ssh ubuntu@52.87.220.62 $'~/"$file'
    #echo "Script was successfully runned"
fi
