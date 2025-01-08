#!/bin/bash

source ./config.sh
source ./utils.sh

search_files() {
    read -p "Enter search term: " search_term
    
    echo "Searching for files containing '$search_term'..."
    find "$BASE_DIR" -type f -iname "*$search_term*" | while read file; do
        echo "$(basename "$file") ($(dirname "$file"))"
    done
    
    log_message "Searched for files containing: $search_term"
}

search_files

