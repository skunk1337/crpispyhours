#!/bin/bash

# Set the log file path
LOGFILE=“$HOME/crispyhours.log”

# Check if crispy-doom is running
if pgrep -x “crispy-doom” > /dev/null
Then
	echo “$(date): Crispy Doom is running”  >> “$LOGFILE”
fi