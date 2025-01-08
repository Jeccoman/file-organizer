#!/bin/bash

source ./config.sh
source ./utils.sh

generate_report() {
    local report_file="$BASE_DIR/storage_report.txt"
    
    echo "Generating storage report..."
    
    {
        echo "Storage Report - $(date)"
        echo "=========================="
        echo
        echo "Total storage usage:"
        du -sh "$BASE_DIR"
        echo
        echo "Storage usage by directory:"
        du -sh "$BASE_DIR"/*
        echo
        echo "File count by type:"
        find "$BASE_DIR" -type f | sed 's/.*\.//' | sort | uniq -c | sort -rn
    } > "$report_file"
    
    echo "Report generated: $report_file"
    log_message "Generated storage report: $report_file"
}

generate_report

