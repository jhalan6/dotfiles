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
[ ! -d $HOME/.oh-my-zsh/custom/themes/ ] && mkdir -p $HOME/.oh-my-zsh/custom/themes/ && echo "create ~/oh-my-zsh/custom/themes"

cp vimrc ./${IN_USE_DIR}/.vimrc
cp vimrc.bundles ./${IN_USE_DIR}/.vimrc.bundles
cp tmux.conf ./${IN_USE_DIR}/.tmux.conf
echo "make soft link for vim"
ln -s ${DIR}/${IN_USE_DIR}/.vimrc ~/.vimrc
ln -s ${DIR}/${IN_USE_DIR}/.vimrc.bundles ~/.vimrc.bundles
ln -s ${DIR}/${IN_USE_DIR}/.tmux.conf ~/.tmux.conf

[ -e $HOME/.oh-my-zsh/custom/themes/csh-fino-time.zsh-theme ] && rm $HOME/.oh-my-zsh/custom/themes/csh-fino-time.zsh-theme && echo 'rm csh-fino-time.zsh-theme exist in custom themes folder'

ln -s ${DIR}/csh-fino-time.zsh-theme $HOME/.oh-my-zsh/custom/themes/ && echo 'export csh-fino-time to custom themes folder'

