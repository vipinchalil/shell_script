#!/bin/bash
THRESHOLD=90
MAIL=user@email.com

DISKSIZE= df -h | grep -w / | awk '{print $5}'
if [ "$DISKSIZE" -gt "$THRESHOLD" ]
then
echo "disk space exceed $DISKSIZE mail -s $MAIL "
fi
