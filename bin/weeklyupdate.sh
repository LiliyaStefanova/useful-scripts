#!/bin/bash
echo "Starting weekly package update and upgrade..."
apt-get update # Fetch the list of available updates
apt-get upgrade # Upgrade the current packages
apt-get dist-upgrade # Install new updates
apt-get auto-remove #remove packages that satisfy dependencies for packages no longer needed
apt-get auto-clean 
TIMESTAMP = $(date + %s)
echo "Update completed at $TIMESTAMP" 
echo "Reboot machine (y/n)?"
read CHOICE
if [ $CHOICE = 'y' ]  || [ $CHOICE = 'Y' ]; then
	echo "Restarting..."
	reboot
else 
	echo "Some of the updates will not be applied until you restart"
fi



