#!/bin/bash
WORK_DIR=$1
#open the browser with a new tab and hn page
/usr/bin/firefox -private -new-window https://news.ycombinator.com

# open Intellij
# TODO - this does not work well /usr/local/bin/idea

# launch SpiderOakONE
SpiderOakONE # the application has a check if it has already started

# open a text editor
brackets #TODO check if this is not installed and fall back on a built in editor

#open a konsole window using the first parameter to set the working dir
KONSOLE_COMMAND="konsole --workdir '$WORK_DIR'"
if [ -z "$WORK_DIR" ]; then
	echo "No working dir provided; setting to default (home dir)"
	WORK_DIR="~"
	eval $KONSOLE_COMMAND
else 

	if [ -d "$WORK_DIR" ]; then
		eval $KONSOLE_COMMAND
	else 
		echo "Working directory specified does not exist, a new dir will be created"
		mkdir $WORK_DIR
		eval  $KONSOLE_COMMAND
	fi
fi	
