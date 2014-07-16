"-----------------------------------------------------------------------------
" Global Stuff
"-----------------------------------------------------------------------------
" Get pathogen up and running
filetype off 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Line numbers
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

colorscheme ir_black

" Tabstops are 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Printing options
set printoptions=header:0,duplex:long,paper:letter

" set the search scan to wrap lines
set wrapscan

" I'm happy to type the case of things.  I tried the ignorecase, smartcase
" thing but it just wasn't working out for me
set noignorecase

