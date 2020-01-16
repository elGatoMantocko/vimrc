#!/usr/bin/env zsh
mkdir -p ~/.vim/bundle
[ ! -e ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

ln -sf $(dirname $0:a)/vimrc ~/.vimrc
vim +PluginClean +PluginInstall +PluginUpdate +qall
cd ~/.vim/bundle/YouCompleteMe && python3 install.py --clang-completer --java-completer --js-completer --ts-completer --go-copmleter
