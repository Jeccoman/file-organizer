#!/bin/bash

source ./config.sh
source ./utils.sh

show_menu() {
    echo "Advanced File Organizer"
    echo "1. Organize files in a directory"
    echo "2. Create a backup"
    echo "3. Restore from backup"
    echo "4. Search files"
    echo "5. Generate storage report"
    echo "6. Compress old files"
    echo "7. View logs"
    echo "8. Exit"
    echo
    read -p "Enter your choice (1-8): " choice
}

while true; do
    show_menu
    
    case $choice in
        1)
            read -p "Enter the directory to organize: " dir_to_organize
            ./organize_files.sh "$dir_to_organize"
            ;;
        2)
            ./backup.sh
            echo "Backup created successfully."
            ;;
        3)
            ./restore_backup.sh
            ;;
        4)
            ./search_files.sh
            ;;
        5)
            ./generate_report.sh
            ;;
        6)
            ./compress_files.sh
            ;;
        7)
            if [ -f "$LOG_FILE" ]; then
                less "$LOG_FILE"
            else
                echo "No log file found."
            fi
            ;;
        8)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    
    echo
    read -p "Press Enter to continue..."
done

