#!/bin/bash
# Script 3: Disk and Permission Auditor (Using ls -ld + awk)

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "        Directory Audit Report            "
echo "=========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Extract permissions, owner, group using ls -ld + awk
        INFO=$(ls -ld "$DIR")
        PERMS=$(echo "$INFO" | awk '{print $1}')
        OWNER=$(echo "$INFO" | awk '{print $3}')
        GROUP=$(echo "$INFO" | awk '{print $4}')

        # Get directory size
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')

        # Print formatted output
        printf "Path: %-15s | Perms: %-10s | Owner: %-10s | Group: %-10s | Size: %s\n" \
            "$DIR" "$PERMS" "$OWNER" "$GROUP" "$SIZE"

    else
        echo "Path: $DIR does not exist on this system."
    fi
done

echo "------------------------------------------"

# Config directory check (example: Git)
CONFIG_DIR="$HOME/.config"

if [ -d "$CONFIG_DIR" ]; then
    echo "[CONFIG] Directory found: $CONFIG_DIR"

    INFO=$(ls -ld "$CONFIG_DIR")
    PERMS=$(echo "$INFO" | awk '{print $1}')
    OWNER=$(echo "$INFO" | awk '{print $3}')

    echo "Permissions: $PERMS | Owner: $OWNER"
else
    echo "[CONFIG] No config directory found at $CONFIG_DIR"
fi

echo "=========================================="
