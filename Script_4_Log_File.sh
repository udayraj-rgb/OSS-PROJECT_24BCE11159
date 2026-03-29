#!/bin/bash
# Script 4: Log File Analyzer
# Author: UDAYRAJ PATIL
# Registration: 24BCE11159
# Course: Open Source Software
# Description: Reads a log file line by line, counts keyword
#              matches, and displays the last 5 matching lines.
# Usage: ./script4_log_analyzer.sh [logfile] [keyword]

LOGFILE=${1:-"/var/log/system.log"}
KEYWORD=${2:-"error"}
COUNT=0

echo "=========================================="
echo "           Log File Analyzer              "
echo "=========================================="
echo "Target File : $LOGFILE"
echo "Keyword     : '$KEYWORD'"
echo "------------------------------------------"

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found or inaccessible."
    echo "Tip: Try running with sudo for protected log files."
    echo "     sudo ./script4_log_analyzer.sh $LOGFILE $KEYWORD"
    exit 1
fi

# ---- DO-WHILE STYLE RETRY (TODO ADDED HERE) ----
while true; do
    if [ -s "$LOGFILE" ]; then
        break
    else
        echo "Warning: $LOGFILE is empty. Waiting for content..."
        sleep 2
    fi
done

echo "Scanning..."
echo ""

# while-read loop
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Result  : '$KEYWORD' found $COUNT time(s) in $LOGFILE"
echo ""

# ---- LAST 5 MATCHING LINES (TODO COMPLETED) ----
if [ $COUNT -gt 0 ]; then
    echo "--- Last 5 matching lines ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
    echo "-----------------------------"
else
    echo "No matching lines found."
fi

echo "=========================================="
