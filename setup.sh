#!/bin/bash

#MacOSX




#Homebrew
 source homebrew.sh

#dotfiles
 git clone --recursive https://github.com/ryoo/dotfiles ~/dotfiles/
 source symlink.sh

#Softwares
 source softwares.sh



