#!/bin/bash
echo -e "\e[31mStrapping \e[36mall \e[94mda \e[32mdots \e[0m"

#vim
echo -e "Setting up vim"

#TODO: Add as submodule not plain git it here
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

#mplayer conf
ln -s ~/dotfiles/mplayer ~/.mplayer/config

#Xressources
ln -s ~/dotfiles/Xressources ~/.Xressources

#xinit
ln -s ~/dotfiles/xinitrc ~/.xinitrc

#bashrc
ln -s ~/dotfiles/bashrc ~/.bashrc

#.config
ln -s ~/dotfiles/.config ~/.config
