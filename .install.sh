#!/bin/bash
cp -r ./.bash_profile ~/
cp -r ./.gitconfig ~/
cp -r ./.vim ~/
cp -r ./.vimrc ~/
cp -r ./.ssh ~/
source ~/.bashrc
source ~/.vimrc
echo "done"
