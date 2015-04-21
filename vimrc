"pathogen
execute pathogen#infect()

set ruler
set nu

set smartindent
set autoindent
set tabstop=2
set shiftwidth=2

set expandtab
se t_Co=256

"syntax on
let g:solarized_termcolors=256
let g:solarized_contrast="high"
syntax enable
set background=dark
colorscheme solarized

filetype plugin on


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%f

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"jshint
let g:syntastic_javascript_checkers = ['jsxhint']

"html5 tidy
let g:syntastic_html_tidy_exec = 'tidy5'

"override autocomplete menu color
"highlight Pmenu ctermbg=white ctermfg=black

"jshint color

"hi clear SpellBad
"hi SpellBad cterm=underline,bold ctermfg=white ctermbg=black

"prevent new line at end of file
"set fileformats+=dos

"handlebars / mustache binding
let g:mustache_abbreviations = 1

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"
:command Trailing %s/\s\+$//

"jsbeautifier based on .editorconfig
map <c-f> :call JsBeautify()<cr>
"let g:editorconfig_Beautifier="~/.editorconfig"
