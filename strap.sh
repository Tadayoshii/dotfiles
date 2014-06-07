#!/bin/bash
echo -e "\e[31mStrapping \e[36mall \e[94mda \e[32mdots \e[0m"

#vim
echo -e "Setting up vim"

#TODO: Add as submodule not plain git it here
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

#mplayer conf

#Xressources

#xinit
#bashrc

#.config
