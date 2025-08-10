#!/bin/bash
# -------------------------------------------------
# Script Name : check_disk_space.sh
# Description : Checks disk space usage and prints
#               any partitions where usage is over 80%
# Author      : Your Name
# Date        : YYYY-MM-DD
# -------------------------------------------------

# Display message
echo "Checking disk space usage..."

# 'df -h' shows disk usage in human-readable format (GB, MB)
# 'awk' filters the output:
# - $5 refers to the "Use%" column
# - +0 converts it to a number (removing the % sign)
# - If usage > 80, print that line
df -h | awk '$5+0 > 80 {print}'
