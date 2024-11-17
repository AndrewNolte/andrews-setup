
# Mac Setup

## [Kmonad](https://github.com/kmonad/kmonad)
This is the most recent iteration of my keybindings.

Kmonad is super nice to program, but hard to install, so I tried making an install script.

Run 
```
mac/kmonad/install.sh
```

This installs [Karabiner Elements](https://github.com/pqrs-org/Karabiner-Elements), kmonad, and the recommended Karabiner driver. In my experience, Karabiner elements is needed, as well as some work in giving permissions to the apps. In Settings > Privacy & Security > Input Monitoring, you should see karabiner_grabber, karabiner_observer and terminal

When it's installed, you should be able to run ```sudo kmonad mac/kmonad/kmonad.kbd``` to activate them. The startup script thing has been broken for a while.

If you need to run on an external keyboard, you may need to add ```--input "iokit-name Keyboard K380"``` (or your keyboard name) to that command. Run list-keyboards to get the name of it. However, lately it's just been working for all keyboards for me.

## Keybindings

The keybindings are pretty self-documenting in [the config](kmonad/kmonad.kbd)

These are great because they work across nearly all text editors- vscode, email, docs, navigating sheets, etc. You get 80% of the features of vim/emac, while having them work everywhere.

### Basic Navigation

Caps lock is used as your hyper key for nearly all commands


| Caps + ... |   |
|----------|----------|
| e/r | left/right one tab  |
| i/k | up/down arrow
| j/l | left/right one word |
| i/p | left/right one char |
| m/. | start/end of line |
| ,/(8\|9) | up/down 5x

I find these all intuitive and close to the home row, unlike the vim pneumonics that are pretty far from home.



### Layers
The Select layer (Caps + f) modifies the nav keys by selecting text between present and the moved cursor

The Shift layer (Caps + s) modifies the nav keys by shifting the selection around (up/down, tab left and right). This layer adds the option key, which most editors take to mean this layer.

The Delete layer (Caps + d) will delete in the direction of movement

The terminal layer (Caps + cmd) has a bunch of useful terminal shortcuts for vscode. I also use the terminal on the right, so directionally these mainly make sense for that setup.


| Caps + Cmd + ... |   |
|----------|----------|
| L | Toggle hide/show terminal panel |
| U | New terminal |
| J | Delete Terminal |
| I/K | Select Up/Down one terminal |
| M/. | Expand/Contract terminal size | 



## [Rectangle](https://rectangleapp.com/)

This is useful for window management, i.e. snapping windows to split screen