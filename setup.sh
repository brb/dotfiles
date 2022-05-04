#!/bin/bash

ln -sf $PWD/.tmux.conf $HOME/.tmux.conf
ln -sf $PWD/.vim $HOME/.vim
ln -sf $PWD/.vim/.vimrc $HOME/.vimrc
ln -sf $PWD/.gitconfig $HOME/.gitconfig
ln -sf $PWD/.zprofile $HOME/.zprofile
ln -sf $PWD/.zshenv $HOME/.zshenv
ln -sf $PWD/.zshrc $HOME/.zshrc
ln -sf $PWD/.vimperatorrc $HOME/.vimperatorrc
ln -sf $PWD/.xinitrc $HOME/.xinitrc
ln -sf $PWD/.Xmodmap $HOME/.Xmodmap
ln -sf $PWD/.Xdefaults $HOME/.Xdefaults
ln -sf $PWD/.i3status.conf $HOME/.i3status.conf
ln -sf $PWD/.ctags $HOME/.ctags
mkdir -p $HOME/.i3
ln -sf $PWD/.i3.config $HOME/.i3/config
ln -sf $PWD/redshift.conf $HOME/.config/redshift.conf
ln -sf $PWD/nvim $HOME/.config/nvim
mkdir -p $HOME/.urxvt/ext
ln -sf $PWD/.urxvt/ext/solarized $HOME/.urxvt/ext/solarized
mkdir $HOME/.vimtmpdir
