#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Udayraj Patil

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Size of directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------"

# Config directory check (example: Git)
CONFIG_DIR="$HOME/.config"

if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Config Directory: $CONFIG_DIR => Permissions: $PERMS"
else
    echo "Config directory not found at $CONFIG_DIR"
fi
