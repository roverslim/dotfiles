" 
" TODOs:
"   - configure automatic retabing on file save
"   - trailing whitespae highlighting (*automatic removal)
"   - read Vagrantfile as ruby
"
execute pathogen#infect()

set encoding=utf8 "Terminal output encoding
set fileencodings=utf8 "File output encoding on write
set autoindent "Copy the indentation from the previous line
set tabstop=2 "Number of spaces that correspond to a tab
set shiftwidth=2 "Number of space characters inserted for indentation
set expandtab "Convert tabs to spaces

syntax enable

filetype plugin indent on

set background=light
let g:solarized_termcolors=256
colorscheme solarized

call pathogen#helptags()
