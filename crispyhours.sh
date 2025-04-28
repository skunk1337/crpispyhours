#!/bin/bash

LOGDIR="$HOME/crispy_logs"
LOGFILE="$LOGDIR/crispy_doom_usage.log"

mkdir -p "$LOGDIR"

echo "I am running in the background! Please don't forget about me."

RUNNING=0

while true; do
    if pgrep -x "crispy-doom" > /dev/null; then
        if [ "$RUNNING" -eq 0 ]; then
            echo "$(date): STARTED" >> "$LOGFILE"
            RUNNING=1
        fi
    else
        if [ "$RUNNING" -eq 1 ]; then
            echo "$(date): STOPPED" >> "$LOGFILE"
            RUNNING=0
        fi
    fi
    sleep 5
done