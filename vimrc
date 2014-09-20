" Get pathogen up and running
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"-----------------------------------------------------------------------------
" Global Stuff
"-----------------------------------------------------------------------------
colorscheme lasca
set t_Co=256 " indicate 265 colors support for terminal

" Line numbers
set nu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" global clipboard (to copy\paste between different vim insances)
set clipboard=unnamedplus

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" don't display welcome
set shortmess+=I

" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler

" set num of lines to display above\below cursor when scrolling
set scrolloff=5

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Tabstops are 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Allow the cursor to go in to "invalid" places
"set virtualedit=all

" Make the command-line completion better
set wildmenu

" get rid of the silly characters in separators
set fillchars = ""

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Printing options
set printoptions=header:0,duplex:long,paper:letter

" set the search scan to wrap lines
set wrapscan

" I'm happy to type the case of things.  I tried the ignorecase, smartcase
" thing but it just wasn't working out for me
set noignorecase

" Turn backup off
set nobackup
set nowb
set noswapfile

" ??? pastetoggle http://stackoverflow.com/questions/2861627/paste-in-insert-mode
"set paste
"set pastetoggle=<F2>

" blinks matched open bracket on adding the closing one
"set showmatch

set browsedir=current
set title " display buffer name at terminal tile

set completeopt+=longest


"-----------------------------------------------------------------------------
" Airline
"-----------------------------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
set noshowmode

"-----------------------------------------------------------------------------
" Git Gutter
"-----------------------------------------------------------------------------
highlight clear SignColumn

"-----------------------------------------------------------------------------
" highlight unwanted(trailing) whitespace
" + have this highlighting not appear whilst you are typing in insert mode
" + have the highlighting of whitespace apply when you open new buffers
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
"-----------------------------------------------------------------------------
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"-----------------------------------------------------------------------------
" Mappings
"-----------------------------------------------------------------------------
" leader key
let mapleader = ','

" I don't want to have the default keymappings for my scala plugin evaluated
let g:scala_use_default_keymappings = 0

" Remap VIM 0 to first non-blank character
map 0 ^

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

function! Comment()
  let ext = tolower(expand('%:e'))
  if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
    silent s/^/\#/
  elseif ext == 'js' || ext == 'scala'
    silent s:^:\/\/:g
  elseif ext == 'vim'
    silent s:^:\":g
  endif
endfunction

function! Uncomment()
  let ext = tolower(expand('%:e'))
  if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
    silent s/^\#//
  elseif ext == 'js' || ext == 'scala'
    silent s:^\/\/::g
  elseif ext == 'vim'
    silent s:^\"::g
  endif
endfunction

map <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>

" Autocomplete already-existing words in the file with TAB (extremely useful!)
function InsertTabWrapper()
      let col = col('.') - 1
      if !col || getline('.')[col - 1] !~ '\k'
          return "\<tab>"
      else
          return "\<c-p>"
      endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
