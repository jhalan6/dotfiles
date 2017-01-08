#!/bin/bash

IN_USE_DIR="inUse"
DIR=$(pwd)
echo "remove old vimrc files"
rm -rf ${IN_USE_DIR}
rm ~/.vimrc
rm ~/.vimrc.bundles
rm ~/.tmux.conf

echo "create IN_USE_DIR"
mkdir ${IN_USE_DIR}

cp vimrc ./${IN_USE_DIR}/.vimrc
cp vimrc.bundles ./${IN_USE_DIR}/.vimrc.bundles
cp tmux.conf ./${IN_USE_DIR}/.tmux.conf
echo "make soft link for vim"
ln -s ${DIR}/${IN_USE_DIR}/.vimrc ~/.vimrc
ln -s ${DIR}/${IN_USE_DIR}/.vimrc.bundles ~/.vimrc.bundles
ln -s ${DIR}/${IN_USE_DIR}/.tmux.conf ~/.tmux.conf
