#!/bin/bash

# Absolute paths determined by the install script:
KMONAD_BIN="[ABSOLUTE PATH HERE]"
LIST_KEYBOARDS_BIN="[ABSOLUTE PATH HERE]"
KMONAD_CONFIG_FILE="/var/root/.config/kmonad/kmonad.kbd" # Full config path

echo "Kmonad Daemon running..."

# Use absolute paths for all commands
KBOUT=$("$LIST_KEYBOARDS_BIN" 2>&1)

echo "Found keyboards: $KBOUT"

# fork a kmonad for each keyboard
for kb in $KBOUT; do
    "$KMONAD_BIN" "$KMONAD_CONFIG_FILE" --input "iokit-name $kb" &
done

jobs
wait