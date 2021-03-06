#!/bin/bash

CURDIR='pwd'

SELFDIR=$(dirname "$0")

SELFDIR=$CURDIR/$SELFDIR

cd "$SELFDIR"

echo '配置vim...'
cp -R HOME_vim ~/.vim
cp vimrc ~/.vimrc

echo '更新bash配置文件...'
cp profile ~/.profile
cp bashrc ~/.bashrc

echo '初始化nano配置'
cp nanorc ~/.nanorc


DIRLIST="bin c sh tmp"

cd

echo '创建相关目录...'
for d in $DIRLIST ; do
    if [ ! -d  "$d" ] ; then
        mkdir "$d"
    fi
done

if [ -d "$HOME/sh" ] ; then
    cp -R sh/* $HOME/sh/
else
    cp -R sh $HOME/
fi
