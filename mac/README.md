
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

### Basic Navigation

Caps lock is used as your hyper key for nearly all commands

- Caps + e, Caps + r will switch to a left or right tab. These just map to cmd+tab, cmd+shift+tab, so they should work across many apps. Mapping to native bindings will be a theme here.

- Caps + i,j,k,l are like arrow keys, except J and L actually go left/right one word
- Caps + i,p go one left/right
- Caps + m, '.' go to the beginning and end of a line
- Caps + ',' and Caps + 8 or 9 go up/down by five

### Layers
The Select layer (Caps + f) modifies the nav keys by selecting text between present and the moved cursor

The Shift layer (Caps + s) modifies the nav keys by shifting the selection around (up/down, tab left and right)

The Delete layer (Caps + d) will delete in the direction of movement

The terminal layer (Caps + cmd) has a bunch of useful terminal shortcuts for vscode


## [Rectangle](https://rectangleapp.com/)

This is useful for window management, i.e. snapping windows to split screen