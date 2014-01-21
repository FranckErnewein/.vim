"pathogen
execute pathogen#infect()

set ruler
set nu

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4

"syntax on
let g:solarized_termcolors=256
let g:solarized_contrast="high"
syntax enable
set background=dark
colorscheme solarized

filetype plugin on

"jshint
let g:jshint2_save = 1

"override autocomplete menu color
"highlight Pmenu ctermbg=white ctermfg=black

"jshint color

"hi clear SpellBad
"hi SpellBad cterm=underline,bold ctermfg=white ctermbg=black
