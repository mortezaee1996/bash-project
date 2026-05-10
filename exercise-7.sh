#!/bin/bash

# Define the input file containing IPs
IP_LIST_FILE="ip_list.txt"
# Define the directory for log files
LOG_DIR="/var/log/ping_results"
mkdir -p "$LOG_DIR"

# Get the current date in YYYY-MM-DD format
CURRENT_DATE=$(date +"%Y-%m-%d")
# Get the hostname of the current machine
HOSTNAME=$(hostname)
LOG_FILE="$LOG_DIR/${HOSTNAME}_${CURRENT_DATE}.log"

echo "Starting ping test at $(date) on host $HOSTNAME" | tee -a "$LOG_FILE"
echo "-----------------------------------------" | tee -a "$LOG_FILE"

# Check if the IP list file exists
if [ ! -f "$IP_LIST_FILE" ]; then
    echo "Error: IP list file '$IP_LIST_FILE' not found." | tee -a "$LOG_FILE"
    exit 1
fi

# Read the IP list file line by line
while IFS= read -r ip; do
    # Skip empty lines or lines starting with # (comments)
    if [[ -z "$ip" || "$ip" =~ ^# ]]; then
        continue
    fi

    echo "Pinging $ip..."
    # Ping the IP address once (-c 1) and capture output/errors
    # Redirect both stdout and stderr to a variable
    ping_output=$(ping -c 1 "$ip" 2>&1)
    ping_status=$? # Get the exit status of the ping command

    if [ $ping_status -eq 0 ]; then
        echo "$ip is reachable. (Ping successful)" | tee -a "$LOG_FILE"
        echo "Ping output for $ip: $ping_output" | tee -a "$LOG_FILE"
    else
        echo "$ip is unreachable. (Ping failed)" | tee -a "$LOG_FILE"
        echo "Ping error for $ip: $ping_output" | tee -a "$LOG_FILE"
    fi
    echo "" | tee -a "$LOG_FILE" # Add a blank line for readability

done < "$IP_LIST_FILE"

echo "-----------------------------------------" | tee -a "$LOG_FILE"
echo "Ping test completed at $(date)" | tee -a "$LOG_FILE"
