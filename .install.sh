#!/bin/bash
ln -s dotfiles/.bash_profile ~/
ln -s dotfiles/.bashrc ~/
ln -s dotfiles/.gitconfig ~/
ln -s dotfiles/.git-prompt.sh ~/
ln -s dotfiles/.vim ~/
ln -s dotfiles/.vimrc ~/
ln -s dotfiles/.tmux.conf ~/
~/.bash_profile
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
source ~/.bashrc
source ~/.vimrc
echo "done"
