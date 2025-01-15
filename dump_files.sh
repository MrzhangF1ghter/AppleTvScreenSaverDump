#!/bin/bash
# dump apple tv screensaver resources to the desktop
# Usage: ./dump_files.sh
# don't forget to make the file executable by running chmod +x dump_files.sh
#
# For personal use only, not for redistribution or commercial purposes
# All rights reserved to the original author.


cd '/Library/Developer/CoreSimulator/Volumes/tvOS_22K154/Library/Developer/CoreSimulator/Profiles/Runtimes/tvOS 18.2.simruntime' || {
    echo "Directory not found! tvOS installed? version correct?"
    exit 1
}
# Create a folder on the desktop and copy files
mkdir -p ~/Desktop/appletv_resources && 
sudo find . \( -name "*.mov" -o -name "*.heic" \) -exec cp {} ~/Desktop/appletv_resources \;
echo "Files have been successfully copied to ~/Desktop/appletv_resources."