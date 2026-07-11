#!/bin/bash
#This script creates a report of our disk configuration

FILENAME=$(hostname)
echo "Disk report saved to $FILENAME.report1"

lvscan >$FILENAME.report1
vgscan >>$FILENAME.report1
pvscan >>$FILENAME.report1
lsblk >>$FILENAME.report1
df -hT | grep -v tmp >>$FILENAME.report1
