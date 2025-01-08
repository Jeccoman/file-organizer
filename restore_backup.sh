#!/bin/bash

source ./config.sh
source ./utils.sh

restore_backup() {
    local backup_dir="$BASE_DIR/backups"
    
    if [ ! -d "$backup_dir" ]; then
        echo "No backups found."
        return 1
    fi
    
    echo "Available backups:"
    local backups=($(ls -1 "$backup_dir"/backup_*.tar.gz))
    for i in "${!backups[@]}"; do
        echo "$((i+1)). ${backups[$i]##*/}"
    done
    
    read -p "Enter the number of the backup to restore: " choice
    if [ "$choice" -ge 1 ] && [ "$choice" -le "${#backups[@]}" ]; then
        local selected_backup="${backups[$((choice-1))]}"
        
        read -p "This will overwrite existing files. Are you sure? (y/n): " confirm
        if [ "$confirm" = "y" ]; then
            tar -xzf "$selected_backup" -C "$BASE_DIR"
            log_message "Restored backup: $selected_backup"
            echo "Backup restored successfully."
        else
            echo "Restore cancelled."
        fi
    else
        echo "Invalid choice."
    fi
}

restore_backup

