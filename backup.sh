#!/bin/bash

source ./config.sh
source ./utils.sh

create_backup() {
    local backup_dir="$BASE_DIR/backups"
    local timestamp=$(date +"%Y%m%d_%H%M%S")
    local backup_file="$backup_dir/backup_$timestamp.tar.gz"
    
    create_directory "$backup_dir"
    
    tar -czf "$backup_file" -C "$BASE_DIR" .
    log_message "Created backup: $backup_file"

    local backup_count=$(ls -1 "$backup_dir"/backup_*.tar.gz 2>/dev/null | wc -l)
    if [ "$backup_count" -gt "$MAX_BACKUPS" ]; then
        local oldest_backup=$(ls -1t "$backup_dir"/backup_*.tar.gz | tail -n 1)
        rm "$oldest_backup"
        log_message "Removed oldest backup: $oldest_backup"
    fi
}

create_backup

