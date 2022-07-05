
# Linux / Ubuntu

For this I use kmonad, which is apparently a really good cross-platform tool, but I haven't tried it out on mac and windows, as this was the last one I wrote.

Download here:
https://github.com/kmonad/kmonad/releases


## Features
This implements most of the features, and one really cool thing is that it swaps out left alt and ctrl keys, so it pretty much feels like mac

## Issues
* Currently this script doesn't have the quick-sleep
* The current keyboard is hard-coded, I need to figure out a way to auto-detect the active keyboard. I tried doing by-path to no avail.

## figuring out the current keyboard

```bash
sudo evtest
```

