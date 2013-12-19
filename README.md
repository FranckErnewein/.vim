# .vim

vim config

## Installation:

    git clone git://github.com/nelstrom/dotvim.git ~/.vim

Create symlinks:

	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

	cd ~/.vim
	git submodule init
	git submodule update

Or clone then run install.sh

## Update dependencies

	git submodule foreach git pull origin master

Or run update.sh

## credit

Inspired by:  
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
https://github.com/nelstrom/dotvim
