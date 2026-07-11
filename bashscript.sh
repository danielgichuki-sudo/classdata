#!/bin/bash
#This script creates a report of our disk configuration

FILENAME=$(hostname)
echo "Disk report saved to $FILENAME.report"

lvscan >$FILENAME.report
Vgscan >>$FILENAME. report
pvscan >>$FILENAME.report
lsblk >>$FILENAME.report
df -hT | grep -v tmp >>$FILENAME.report
