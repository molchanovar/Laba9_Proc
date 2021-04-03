#!/usr/bin/env bash

for PID in $(ls -l /proc | awk '{print $9}' | grep -Eo '[0-9]{1,9}' | sort -n );
do

TTY=$(cat /proc/$PID/stat 2>/dev/null | awk '{print $7}')
STAT=$(cat /proc/$PID/stat 2>/dev/null | awk '{print $3}')
UTIME=$(cat /proc/$PID/stat 2>/dev/null | awk '{print $14}')
STIME=$(cat /proc/$PID/stat 2>/dev/null | awk '{print $17}')

#Delete NULL byte:
CMD=$(cat /proc/$PID/cmdline | tr -d '\0' < /proc/$PID/cmdline)

CLK_TCK=$(getconf CLK_TCK)
TTIME=$((UTIME + STIME))
TIME=$((TTIME / CLK_TCK))

if [ -n "$CMD" ]; then
        printf "%-8s | %-15s | %s\n" "$PID | $TTY | $STAT | $TIME | $CMD" | column -t  -s '|'

fi
done
