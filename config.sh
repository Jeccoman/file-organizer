#!/bin/bash

# Configuration file for Advanced File Organizer

# Base directory for file organization
BASE_DIR="$HOME/advanced_file_organizer"

# Log file location
LOG_FILE="$BASE_DIR/organizer.log"

# Maximum number of backups to keep
MAX_BACKUPS=5

# File extensions and their corresponding directories
declare -A FILE_TYPES
FILE_TYPES=(
    ["txt"]="documents"
    ["doc"]="documents"
    ["docx"]="documents"
    ["pdf"]="documents"
    ["jpg"]="images"
    ["jpeg"]="images"
    ["png"]="images"
    ["mp3"]="music"
    ["wav"]="music"
    ["mp4"]="videos"
    ["avi"]="videos"
)

