
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
"Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'tasn/vim-tsx'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'HerringtonDarkholme/yats'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'vim-scripts/dbext.vim'
Plug 'jparise/vim-graphql'

call plug#end()

set langmenu=en_US.UTF-8
language messages en_US.UTF-8

set ruler
set nu

set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
se t_Co=256
set laststatus=2

"syntax on
let g:solarized_termcolors=256
let g:solarized_contrast="high"
syntax enable
set background=dark
colorscheme solarized

filetype plugin on

nmap <C-j> :lnext<CR>
