call plug#begin('~/.vim/plugged')

"general
Plug 'altercation/vim-colors-solarized'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'

"javascript
Plug 'mattn/emmet-vim'
Plug 'othree/yajs.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

"css
Plug 'ap/vim-css-color'

"ruby
Plug 'tpope/vim-rails'
Plug 'ngmy/vim-rubocop'

"Python
Plug 'nvie/vim-flake8'

"SQL
Plug 'vim-scripts/dbext.vim'

call plug#end()

set langmenu=en_US.UTF-8
language messages en_US.UTF-8

set ruler
set nu

"Cocvim required
set hidden

set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
se t_Co=256
set laststatus=2

" Some servers have issues with backup files, see #649 in Cocvim
set nobackup
set nowritebackup

" syntax on
let g:solarized_termcolors=256
let g:solarized_contrast="high"
syntax enable
set background=dark
colorscheme solarized

filetype plugin on

" bind <leader> as coma 
let mapleader = ","

" always display sign error/warning column
set signcolumn=yes


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" to navigate diagnostics
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)

" fix osx alt-a for fzf
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

"ag on cursor
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" customize coc error message background for better readability
highlight CocErrorFloat ctermfg=Darkred guifg=#550000

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'relativepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }

" one space after comment for rubycop
let g:NERDSpaceDelims = 1


" clip board" FIXME
" set clipboard=unnamedplus
" noremap <Leader>y "*y
" noremap <Leader>Y "+y
