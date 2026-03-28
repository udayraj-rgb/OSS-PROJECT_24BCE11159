#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Udayraj Patil

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write manifesto to file
echo "----- MY OPEN SOURCE MANIFESTO -----" > "$OUTPUT"
echo "Date   : $DATE" >> "$OUTPUT"
echo "Author : $(whoami)" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I use $TOOL daily and believe in the power of open collaboration." >> "$OUTPUT"
echo "For me, freedom means $FREEDOM in computing." >> "$OUTPUT"
echo "I aim to build $BUILD and share it openly with everyone." >> "$OUTPUT"

echo "" >> "$OUTPUT"
echo "-----------------------------------" >> "$OUTPUT"

# Alias concept (comment)
# Add this to ~/.bashrc:
# alias manifesto='./script5.sh'

echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
