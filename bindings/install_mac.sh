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