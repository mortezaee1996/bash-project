#!/bin/bash

# Define the directory to store logs
LOG_DIR="/var/log/passwd_fields"
sudo mkdir -p "$LOG_DIR"

# Get the current date in YYYY-MM-DD format
CURRENT_DATE=$(date +"%Y-%m-%d")
LOG_FILE="$LOG_DIR/$CURRENT_DATE.log"

# Extract the first and third fields from /etc/passwd and save to the log file
# The fields in /etc/passwd are separated by colons (:)
# awk -F':' '{print $1 ":" $3}' extracts the first and third fields and joins them with a colon
awk -F':' '{print $1 ":" $3}' /etc/passwd > "$LOG_FILE"

# Remove log files older than two days
# find command searches for files in LOG_DIR,
# -type f specifies to find only files,
# -mtime +2 finds files modified more than 2 days ago,
# -delete removes the found files
find "$LOG_DIR" -type f -name "*.log" -mtime +2 -delete

echo "First and third fields of /etc/passwd saved to $LOG_FILE"
echo "Old logs (older than 2 days) have been cleaned up."
