#!/bin/bash

DOT_FILES=(.zsh .zshrc .bashrc .bash_profile .gitconfig .gitignore .vimrc .gvimrc .gemrc .bundle .tmux.conf .dir_colors .rdebugrc .pryrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
