#!/bin/bash
# Author: poornesh2317 (24MEI10103)

if [ -x "/usr/bin/apt" ]; then
  PACKAGE_MANAGER="apt"
  PACKAGE_NAME="vlc"
elif [ -x "/usr/bin/yum" ]; then
  PACKAGE_MANAGER="yum"
  PACKAGE_NAME="vlc"
else
  echo "Unsupported package manager"
  exit 1
fi

if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
  echo "================================================================================"
  echo "                   Vlc AUDIT - PACKAGE INSPECTOR                "
  echo "================================================================================"
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(lsb_release -ds) system."
  echo "Version: $($PACKAGE_MANAGER show $PACKAGE_NAME | grep Version | cut -d ' ' -f2)"
  echo "--------------------------------------------------------------------------------"
  echo "FOSS Philosophy Notes:"
  echo " - Vlc: A free and open-source media player"
  echo " - Firefox: A free and open-source web browser"
  echo " - LibreOffice: A free and open-source office suite"
  echo " - GIMP: A free and open-source raster graphics editor"
  echo "================================================================================"
else
  echo "$PACKAGE_NAME is not installed"
fi