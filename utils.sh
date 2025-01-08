#!/bin/bash

source ./config.sh

log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

create_directory() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        log_message "Created directory: $1"
    fi
}

move_file() {
    local file="$1"
    local extension="${file##*.}"
    local target_dir="$BASE_DIR/${FILE_TYPES[$extension]:-misc}"
    
    create_directory "$target_dir"
    mv "$file" "$target_dir/"
    log_message "Moved $file to $target_dir/"
}

