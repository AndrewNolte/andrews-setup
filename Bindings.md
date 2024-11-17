## Keybindings

These bindings use [Kmonad](https://github.com/kmonad/kmonad) as a fronetend. Kmonad is super nice to program, but hard to install, so I tried making an install script for mac at least. I haven't tried it on other platforms, but in theory it should work on windows and linux. The keys that they map to should need to would probably need to change though.


## Installing
Run 
```
bindings/install_mac.sh
```

This installs [Karabiner Elements](https://github.com/pqrs-org/Karabiner-Elements), kmonad, and the recommended Karabiner driver. In my experience, Karabiner elements is needed, as well as some work in giving permissions to the apps. In Settings > Privacy & Security > Input Monitoring, you should see karabiner_grabber, karabiner_observer and terminal

When it's installed, you should be able to run ```sudo kmonad mac/kmonad/kmonad.kbd``` to activate them. The startup script thing has been broken for a while.

If you need to run on an external keyboard, you may need to add ```--input "iokit-name Keyboard K380"``` (or your keyboard name) to that command. Run list-keyboards to get the name of it. However, lately it's just been working for all keyboards for me.

## Using

The keybindings are pretty self-documenting in [the config](kmonad/kmonad.kbd), but here is a more concise explanation.

### Basic Navigation

Caps lock is used as your hyper key for nearly all commands


| Caps + ... |   |
|----------|----------|
| e/r | left/right one tab (browser, vscode, etc.) |
| j/l | left/right one word |
| u/o | left/right one char |
| i/k | up/down arrow |
| m/. | start/end of line |
| ,/(8\|9) | up/down 5x

I find these all intuitive and close to the home row, unlike the vim pneumonics that are pretty far from home.

### Layers
The Select layer (Caps + f) modifies the nav keys by selecting text between the current and moved cursor

The Shift layer (Caps + s) modifies the nav keys by shifting the selection around (up/down, tab left and right). This layer adds the option key, which most editors take to mean this layer. This is great for using after the select layer to move blocks of code around.

The Delete layer (Caps + d) will delete in the direction of movement.

The terminal layer (Caps + cmd) has a bunch of useful terminal shortcuts for vscode. I also use the terminal on the right side rather than the bottom, so directionally these mainly make sense for that setup.


| Caps + Cmd + ... |   |
|----------|----------|
| L | Toggle hide/show terminal panel |
| U | New terminal |
| J | Delete Terminal |
| I/K | Select Up/Down one terminal |
| M/. | Expand/Contract terminal size | 


### Random Bindings
| Random Bindings |   |
|----------|----------|
| Caps + q | Puts computer to sleep |
