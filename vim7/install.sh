#!/bin/sh
cd $(dirname "$0")
ln -fs $(pwd)/vimrc ../.vimrc

if [ ! -d ~/.vim/bundle/vundle ]; then
    rm -rf ~/.vim/bundle/*
    git clone git://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +VundleInstall! +qa

cd bundle
for ext in `ls .`; do
	cd $ext
	git reset --hard HEAD
	cd ..
done
cd ..
