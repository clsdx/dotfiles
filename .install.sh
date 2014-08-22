#!/bin/sh

# install zsh
sudo apt-get install zsh

# create all symbolic links necessary
# bash is still there, just in case
ln -s dotfiles/.bash_profile ~/
ln -sf dotfiles/.bashrc ~/
ln -s dotfiles/.gitconfig ~/
ln -s dotfiles/.git-prompt.sh ~/
ln -s dotfiles/.vim ~/
ln -s dotfiles/.vimrc ~/
ln -s dotfiles/.tmux.conf ~/

ln -s dotfiles/.zprezto ~/
ln -s .zprezto/runcoms/zlogin ~/.zlogin
ln -s .zprezto/runcoms/zlogout ~/.zlogout
ln -s .zprezto/runcoms/zpreztorc ~/.zpreztorc
ln -s dotfiles/.zprofile ~/
ln -s .zprezto/runcoms/zshenv ~/.zshenv
ln -s dotfiles/.zshrc ~/

# create .vim directories
mkdir -p ~/.vim/{doc,tmp,backup}

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
source ~/.zshrc
echo "done, don't forget to launch :VundleInstall in vim ;)"
