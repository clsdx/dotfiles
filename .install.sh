#!/bin/bash
ln -s dotfiles/.bash_profile ~/
ln -s dotfiles/.bashrc ~/
ln -s dotfiles/.gitconfig ~/
ln -s dotfiles/.git-prompt.sh ~/
ln -s dotfiles/.ssh ~/
ln -s dotfiles/.vim ~/
ln -s dotfiles/.vimrc ~/
~/.bash_profile
source ~/.bashrc
source ~/.vimrc
echo "done"
