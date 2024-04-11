#!/bin/bash
set -x


### building stuff

# assumes os >= Catalina, follows https://github.com/kmonad/kmonad/blob/master/doc/installation.md#macos
# clone kmonad
git clone --recursive https://github.com/kmonad/kmonad.git
cd kmonad/

# install karabiner-elelments
brew install --cask karabiner-elements

# install correct karabiner driverkit
open c_src/mac/Karabiner-DriverKit-VirtualHIDDevice/dist/Karabiner-DriverKit-VirtualHIDDevice-1.15.0.pkg
/Applications/.Karabiner-VirtualHIDDevice-Manager.app/Contents/MacOS/Karabiner-VirtualHIDDevice-Manager forceActivate

# install kmonad
brew install haskell-stack
stack install --flag kmonad:dext --extra-include-dirs=c_src/mac/Karabiner-DriverKit-VirtualHIDDevice/include/pqrs/karabiner/driverkit:c_src/mac/Karabiner-DriverKit-VirtualHIDDevice/src/Client/vendor/include
# installed in /Users/$USER/.local/bin/kmonad

# build keyboard lister, useful for extenal keyboards
cd c_src/mac
make
cp list-keyboards ~/.local/bin/list-keyboards
cd ../../../


### stuff for startup script


# not really working rn

# cd mac/kmonad

# add config to home
# mkdir -p ~/.config/kmonad
# cp kmonad.kbd ~/.config/kmonad/kmonad.kbd

# # add startup script
# cp startup.sh /usr/local/bin/kmonadStartup.sh
# # add plist
# mkdir -p ~/Library/LaunchDaemons
# cp kmonadStartup.plist ~/Library/LaunchDaemons/com.local.kmonadStartup.plist
# # add plist to launchd
# launchctl load ~/Library/LaunchDaemons/com.local.kmonadStartup.plist

# echo "make sure ~/.local/bin is in your PATH"