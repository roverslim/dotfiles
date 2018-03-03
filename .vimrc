execute pathogen#infect()

set encoding=utf8 "Terminal output encoding
set fileencodings=utf8 "File output encoding on write
set autoindent "Copy the indentation from the previous line
set tabstop=2 "Number of spaces that correspond to a tab
set shiftwidth=2 "Number of space characters inserted for indentation
set expandtab "Convert tabs to spaces
set hlsearch "Highlighting search matches
set noswapfile "Don't use a swapfile for the buffer
set relativenumber "Display line number relative to cursor
set number "Display line number
set tw=120 "Automatic word wrapping
set rtp+=/usr/local/opt/fzf "To use fzf in Vim

match ErrorMsg '\%>120v.\+' "Highlight long lines

syntax enable
filetype plugin indent on
au BufRead,BufNewFile *.mrb setfiletype ruby
au BufRead,BufNewFile *.axlsx setfiletype ruby

set t_Co=256 " Force vim to use 256 colors
colorscheme railscasts

call pathogen#helptags()
