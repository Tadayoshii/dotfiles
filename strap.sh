#!/bin/bash
echo -e "\e[31mStrapping \e[36mall \e[94mda \e[32mdots \e[0m"

#vim
echo -e "Setting up vim"

#TODO: Add as submodule not plain git it here
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp vimrc ~/.vimrc
vim +BundleInstall +qall
sh ~/.vim/bundle/YouCompleteMe/install.sh
cp libclang.so ~/.vim/bundle/YouCompleteMe/third_party/ycmd/libclang.so
cp .ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
#mplayer conf

#Xressources

#xinit
#bashrc

#.config
