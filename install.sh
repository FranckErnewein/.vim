
#Create symlinks:
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
ln -s ~/.vim/.editorconfig ~/.editorconfig

#Switch to the `~/.vim` directory, and fetch submodules:
cd ~/.vim
git submodule init
git submodule update

cd ~/.vim/bundle/vim-jsbeautify && git submodule update --init --recursive
cd -

npm install -g prettier eslint import-js
