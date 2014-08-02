set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
set t_Co=256
let colors_name = "lasca"

hi Comment	      guifg=#87cfeb    ctermfg=242     gui=none       cterm=none
hi Constant	      guifg=#ad81ff    ctermfg=124     gui=none       cterm=none
hi Cursor	      guibg=#f0e68c    ctermbg=255     guifg=#708090  ctermfg=242    gui=none    cterm=none
hi CursorLine	   guifg=#ffffff    ctermfg=231     guibg=#404040  ctermbg=237    gui=none    cterm=none
hi ColorColumn	   guifg=#ffffff    ctermfg=231     guibg=#cc4040  ctermbg=252    gui=none    cterm=none
hi Directory	   guifg=#008b8b    ctermfg=33      gui=none       cterm=none
hi Folded	      guibg=#555555    ctermbg=239     guifg=#ffd700  ctermfg=220    gui=none    cterm=none
hi FoldColumn     guibg=#272822    ctermbg=07      guifg=#c2bfa5
hi Function	      guifg=#ccffcc    ctermfg=252     gui=none       cterm=none
hi Identifier	   guifg=#a6e22e    ctermfg=248     gui=none       cterm=none
hi LineNr	      guifg=#898989    ctermfg=111      gui=none       cterm=none
hi MatchParen	   guifg=#ccffcc    ctermfg=252     guibg=#008b8b  ctermbg=33     gui=none    cterm=none
hi Normal	      guifg=#ffffff    ctermfg=12     guibg=#0D0C0F  ctermbg=none    gui=none    cterm=none
hi NonText	      guibg=#0D0C0F    ctermbg=none     guifg=#595959  ctermfg=52     gui=none    cterm=none
hi Number	      guifg=#ffa0a0    ctermfg=214     gui=none       cterm=none
hi PreProc	      guifg=#ffa0a0    ctermfg=196     gui=none       cterm=none
hi Statement	   guifg=#f0e68c    ctermfg=2     gui=none       cterm=none
hi Special	      guifg=#fffefc    ctermfg=226     gui=none       cterm=none
hi SpecialKey	   guifg=#9acd32    ctermfg=247     gui=none       cterm=none
hi StatusLine	   guibg=#c2bfa5    ctermbg=07      guifg=#000000  ctermfg=231    gui=none    cterm=none
hi StatusLineNC	guibg=#c2bfa5    ctermbg=07      guifg=#777777  ctermfg=231    gui=none    cterm=none
hi String	      guifg=#e6db74    ctermfg=254     gui=none       cterm=none
hi StorageClass	guifg=#bdb76b    ctermfg=250     gui=none       cterm=none
hi Title	         guifg=#ffffff    ctermfg=231     gui=bold       cterm=bold
hi Todo	         guifg=#fffefc    ctermfg=226     gui=none       cterm=none
hi Type	         guifg=#a6e22e    ctermfg=248     gui=none       cterm=none
hi Underlined	   guifg=#80a0ff    ctermfg=89      gui=underline  cterm=underline
hi VertSplit	   guibg=#c2bfa5    ctermbg=07      guifg=#777777  ctermfg=231    gui=none    cterm=none
hi Visual	      guifg=#ffffff    ctermfg=255     guibg=#bd5200  ctermbg=242    gui=none    cterm=none
hi Pmenu	         guifg=#ffffff    ctermfg=255     guibg=#707070  ctermbg=242    gui=none    cterm=none

