#!/bin/bash
echo "Starting weekly package update and upgrade..."
apt-get update # Fetch the list of available updates
apt-get upgrade # Upgrade the current packages
apt-get dist-upgrade # Install new updates
apt-get auto-remove #remove packages that satisfy dependencies for packages no longer needed
apt-get auto-clean 
echo "Update complete, reboot machine..."
# TODO prompt user to say if they want to reboot here and action it accordingly
