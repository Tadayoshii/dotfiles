#!/bin/bash
echo -e "\e[31mStrapping \e[36mall \e[94mda \e[32mdots \e[0m"

#vim
echo -e "Setting up vim"

#TODO: Add as submodule not plain git it here
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
#cp vimrc ~/.vimrc
ln -L $HOME/dotfiles/vimrc $HOME/.vimrc
vim +PluginInstall +qall
#sh ~/.vim/bundle/YouCompleteMe/install.sh
#cp libclang.so ~/.vim/bundle/YouCompleteMe/third_party/ycmd/libclang.so
#cp .ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
#mplayer conf

#Xressources

#termite
mkdir -p ~/.config/termite
ln -s $HOME/dotfiles/termite.conf ~/.config/termite/config
ln -s $HOME/dotfiles/.tmux.conf ~/.tmux.conf

#xinit
#bashrc

#.config
