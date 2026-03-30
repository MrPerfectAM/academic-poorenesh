#!/bin/bash
# Author: poornesh2317 (24MEI10103)

# Suggested log path for Vlc: /var/log/syslog
LOG_FILE="$1"
KEYWORD="$2"

echo "================================================================================"
COUNT=0
while read -r line; do
  if [[ "$line" == *"$KEYWORD"* ]]; then
    ((COUNT++))
  fi
done < "$LOG_FILE"
echo "Found $COUNT occurrences of '$KEYWORD'"
tail -n 5 "$LOG_FILE" | grep "$KEYWORD"
echo "================================================================================"