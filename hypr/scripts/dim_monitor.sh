#!/bin/bash

# Path to store the current brightness value
STATE_FILE="/tmp/monitor_brightness_state"

case "$1" in
    dim)
        # Get current brightness and save to file
        current=$(ddcutil getvcp 10 | grep -oP 'current value =\s*\K\d+')

        echo "$current" > "$STATE_FILE"
        ddcutil setvcp 10 5
        ;;
    restore)
        if [ -f "$STATE_FILE" ]; then
            saved=$(cat "$STATE_FILE")
            ddcutil setvcp 10 "$saved"
            rm "$STATE_FILE"
        fi
        ;;
esac

