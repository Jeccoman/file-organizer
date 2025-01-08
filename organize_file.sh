#!/bin/bash

source ./config.sh
source ./utils.sh

organize_files() {
    local source_dir="$1"
    
    find "$source_dir" -type f | while read file; do
        move_file "$file"
    done
    
    log_message "Finished organizing files from $source_dir"
}


if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory_to_organize>"
    exit 1
fi

organize_files "$1"

