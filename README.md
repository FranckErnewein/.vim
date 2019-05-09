# .vim

vim configuration and plugin dependencies management based on pathogen and git submodules

## Installation:

```
git clone git://github.com/FranckErnewein/.vim ~/.vim
```

Create symlinks:

```
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

Switch to the `~/.vim` directory, and fetch submodules:

```
cd ~/.vim
git submodule init
git submodule update
```

And install node depencies

```
npm install -g prettier eslint import-js
```

Or clone then run `install.sh`

## Update dependencies

	git submodule foreach git pull origin master

Or run `update.sh`

## Add new plugin
	
install plugin as a submodule:

	git submodule add https://github.com/XXXXXX.git bundle/XXXXXX

## Credit

Inspired by:  
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
https://github.com/nelstrom/dotvim
