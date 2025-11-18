#!/bin/bash
# Purpose: Automate file download
# Author: Yaksh Kundu
# Date: 2025-11-18

URL="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"
DEST_DIR="downloads"

# Create directory
mkdir -p $DEST_DIR

# Download file using wget
echo "Starting download..."
wget -P $DEST_DIR $URL

echo "Download complete. File saved in $DEST_DIR"
