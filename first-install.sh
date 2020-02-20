#!/usr/bin/env bash
#gpg test4
rm -f ~/.bashrc ~/.vimrc ~/.tmux.conf ~/.inputrc ~/.gitconfig

ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.inputrc ~/.inputrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
