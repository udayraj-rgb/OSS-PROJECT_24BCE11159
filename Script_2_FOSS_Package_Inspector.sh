#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Udayraj Patil

PACKAGE=${1:-"git"}   # Default package

echo "=========================================="
echo "        FOSS Package Inspector            "
echo "=========================================="
echo "Checking package: $PACKAGE"
echo "------------------------------------------"

# Check if system uses RPM
if command -v rpm >/dev/null 2>&1; then

    if rpm -q "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed."
        rpm -qi "$PACKAGE" | grep -E "Version|License|Summary"
    else
        echo "$PACKAGE is NOT installed."
    fi

# Check if system uses DPKG
elif command -v dpkg >/dev/null 2>&1; then

    if dpkg -l | grep -w "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed."
        dpkg -l | grep -w "$PACKAGE"
    else
        echo "$PACKAGE is NOT installed."
    fi

else
    echo "No supported package manager found."
fi

echo "------------------------------------------"

# Case statement (Philosophy Note)
case $PACKAGE in
    httpd|apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of applications."
        ;;
    git)
        echo "Git: a distributed version control system for collaboration."
        ;;
    vlc)
        echo "VLC: a free media player that supports almost all formats."
        ;;
    firefox)
        echo "Firefox: an open-source browser focused on privacy."
        ;;
    *)
        echo "$PACKAGE: part of the open-source ecosystem."
        ;;
esac

echo "=========================================="
