#!/bin/bash
[ -e ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
[ -e ~/.vim ] && mv ~/.vim ~/.vim.bak
ln -sf `pwd`/vimrc ~/.vimrc
ln -sf `pwd`/vimdir ~/.vim 
