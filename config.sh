#!/bin/bash

BASE_DIR="$HOME/advanced_file_organizer"

LOG_FILE="$BASE_DIR/organizer.log"

MAX_BACKUPS=5

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

