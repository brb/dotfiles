#!/bin/bash

ln -sf $PWD/.tmux.conf $HOME/.tmux.conf
ln -sf $PWD/.gitconfig $HOME/.gitconfig
ln -sf $PWD/.zprofile $HOME/.zprofile
ln -sf $PWD/.zshenv $HOME/.zshenv
ln -sf $PWD/.zshrc $HOME/.zshrc
ln -sf $PWD/.xinitrc $HOME/.xinitrc
ln -sf $PWD/.Xmodmap $HOME/.Xmodmap
ln -sf $PWD/.i3status.conf $HOME/.i3status.conf
ln -sf $PWD/.ctags $HOME/.ctags
mkdir -p $HOME/.i3
ln -sf $PWD/.i3.config $HOME/.i3/config
ln -sf $PWD/redshift.conf $HOME/.config/redshift.conf
ln -sf $PWD/nvim $HOME/.config/nvim
ln -sf $PWD/alacritty/ $HOME/.config/alacritty
mkdir -p $HOME/.config/helix
ln -sf $PWD/helix-config.toml $HOME/.config/helix/config.toml
