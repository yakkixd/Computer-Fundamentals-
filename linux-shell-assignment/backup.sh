#!/bin/bash
# Purpose: Backup a directory with a timestamp
# Author: Yaksh Kundu
# Date: 2025-11-18

# Define Variables
SOURCE_DIR="/home/yakki/documents"
BACKUP_DIR="/home/yakki/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP"

# Create backup folder if it doesn't exist
mkdir -p $BACKUP_DIR

# Perform the copy
cp -r $SOURCE_DIR $BACKUP_DIR/$BACKUP_NAME

echo "Backup of $SOURCE_DIR completed successfully at $BACKUP_DIR/$BACKUP_NAME"
