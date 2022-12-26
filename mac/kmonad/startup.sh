#!/bin/bash


KBOUT=$(list-keyboards 2>&1)

echo "found keyboards: $KBOUT"

# fork a kmonad for each keyboard
for kb in $KBOUT; do
    kmonad ~/.config/kmonad/kmonad.kbd --input "iokit-name $kb" &
done

jobs
wait