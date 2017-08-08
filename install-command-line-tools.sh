#!/usr/bin/env bash -e

echo "Installing Command Line Tools..."
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
PROD=$(softwareupdate -l | grep "\*.*Command Line" | head -n 1 | awk -F"*" '{print $2}' | sed -e 's/^ *//' | tr -d '\n')
softwareupdate -i "$PROD" --verbose
