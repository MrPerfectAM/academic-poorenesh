#!/bin/bash
# Author: poornesh2317 (24MEI10103)

dirs=("/etc" "/var/log" "/usr/bin" "/var/lib/vlc" "/usr/share/vlc")

echo "================================================================================"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo "$dir"
    ls -l "$dir" | awk '{print $5, $1, $3}'
  else
    echo "$dir does not exist"
  fi
done
echo "================================================================================"