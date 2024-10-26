#!/bin/bash

# Define log file with timestamp
LOGFILE="hardware_specs_$(date +%Y%m%d).log"

# Initialize log file
echo "=== Hardware Specifications Gathering ===" | tee "$LOGFILE"
echo "Date: $(date)" | tee -a "$LOGFILE"

# Execute individual scripts
for script in ./get_*.sh; do
    if [ -x "$script" ]; then
        ./"$script" | tee -a "$LOGFILE"
    else
        echo "Skipping $script (not executable)" | tee -a "$LOGFILE"
    fi
done

echo "=== Gathering Complete ===" | tee -a "$LOGFILE"
echo "Check the log file: $LOGFILE" | tee -a "$LOGFILE"
