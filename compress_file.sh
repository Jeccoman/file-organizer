#!/bin/bash

source ./config.sh
source ./utils.sh

compress_files() {
    read -p "Enter the number of days old to compress files: " days_old
    
    local archive_dir="$BASE_DIR/archives"
    create_directory "$archive_dir"
    
    find "$BASE_DIR" -type f -mtime +"$days_old" -not -path "$archive_dir/*" | while read file; do
        relative_path="${file#$BASE_DIR/}"
        dir_name=$(dirname "$relative_path")
        create_directory "$archive_dir/$dir_name"
        
        gzip -c "$file" > "$archive_dir/${relative_path}.gz"
        rm "$file"
        
        echo "Compressed: $relative_path"
    done
    
    log_message "Compressed files older than $days_old days"
}

compress_files

