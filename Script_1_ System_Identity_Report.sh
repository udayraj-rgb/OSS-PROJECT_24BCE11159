#!/bin/bash
# Script 1: System Identity Report
# Author: Udayraj Patil | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Udayraj Patil"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME

# Linux distribution name
DISTRO=$(grep "^NAME=" /etc/os-release | cut -d= -f2 | tr -d '"')

# System uptime
UPTIME=$(uptime -p)

# Current date and time
CURRENT_DATE=$(date)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software   : $SOFTWARE_CHOICE"
echo "--------------------------------"
echo "OS         : $DISTRO"
echo "Kernel     : $KERNEL"
echo "User       : $USER_NAME"
echo "Home Dir   : $HOME_DIR"
echo "Uptime     : $UPTIME"
echo "Date/Time  : $CURRENT_DATE"
echo "--------------------------------"
echo "OS License : Linux is licensed under"
echo "             GNU General Public License (GPL)"
echo "================================"
