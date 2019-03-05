" Name:         Wizard
" Description:  Apprentice by Romain Lafourcade made to look more similar to its predecessor
" Author:       Aramis Razzaghipour <aramisnoah@gmail.com>
" Maintainer:   Aramis Razzaghipour <aramisnoah@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Tue  5 Mar 20:40:40 2019

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < (get(g:, 'wizard_use16', &t_Co < 256) ? 16 : 256))
  echoerr '[Wizard] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'wizard'

" 256-color variant
if !get(g:, 'wizard_use16', &t_Co < 256)
  hi Normal ctermfg=250 ctermbg=235 guifg=#bcbcbc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=250 ctermbg=235 guifg=#bcbcbc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=242 ctermbg=234 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=244 ctermbg=234 guifg=#808080 guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=244 ctermbg=234 guifg=#808080 guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=230 ctermbg=234 guifg=#ffffdf guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=244 ctermbg=234 guifg=#808080 guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=242 ctermbg=NONE guifg=#6c6c6c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=250 ctermbg=NONE guifg=#bcbcbc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=172 ctermbg=NONE guifg=#d78700 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=NONE ctermbg=131 guifg=NONE guibg=#af5f5f guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=110 ctermbg=NONE guifg=#8fafd7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=66 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=65 ctermbg=NONE guifg=#5f875f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=109 ctermbg=NONE guifg=#87afaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=108 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=230 ctermbg=234 guifg=#ffffdf guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=103 ctermbg=NONE guifg=#8787af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=66 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi NonText ctermfg=242 ctermbg=NONE guifg=#6c6c6c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=250 ctermbg=236 guifg=#bcbcbc guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=234 ctermbg=234 guifg=#1c1c1c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=231 ctermbg=238 guifg=#ffffff guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=242 guifg=NONE guibg=#6c6c6c guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=235 ctermbg=131 guifg=#262626 guibg=#af5f5f guisp=NONE cterm=NONE gui=NONE
  hi ModeMsg ctermfg=108 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi MoreMsg ctermfg=66 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=108 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=131 ctermbg=NONE guifg=#af5f5f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=234 ctermbg=238 guifg=#1c1c1c guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=238 ctermbg=238 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=234 ctermbg=242 guifg=#1c1c1c guibg=#6c6c6c guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=244 guifg=NONE guibg=#808080 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=73 ctermbg=236 guifg=#5fafaf guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi helpLeadBlank ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi helpNormal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=234 ctermbg=242 guifg=#1c1c1c guibg=#6c6c6c guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi StatusLineNC ctermfg=234 ctermbg=238 guifg=#1c1c1c guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=234 ctermbg=242 guifg=#1c1c1c guibg=#6c6c6c guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi StatusLineTermNC ctermfg=234 ctermbg=238 guifg=#1c1c1c guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=235 ctermbg=109 guifg=#262626 guibg=#87afaf guisp=NONE cterm=NONE gui=NONE
  hi VisualNOS ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi VertSplit ctermfg=238 ctermbg=238 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=235 ctermbg=110 guifg=#262626 guibg=#8fafd7 guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=230 ctermbg=NONE guifg=#ffffdf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=242 ctermbg=NONE guifg=#6c6c6c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=108 ctermbg=235 guifg=#87af87 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=103 ctermbg=235 guifg=#8787af guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=131 ctermbg=235 guifg=#af5f5f guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=172 ctermbg=235 guifg=#d78700 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=234 ctermbg=230 guifg=#1c1c1c guibg=#ffffdf guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Search ctermfg=238 ctermbg=230 guifg=#444444 guibg=#ffffdf guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=66 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#af5f5f cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5fafaf cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5f875f cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d78700 cterm=NONE,undercurl gui=NONE,undercurl
  hi ColorColumn ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  let links = [
        \ ['Boolean', 'Constant'],
        \ ['Character', 'Constant'],
        \ ['Conditional', 'Statement'],
        \ ['Debug', 'Special'],
        \ ['Define', 'PreProc'],
        \ ['Delimiter', 'Special'],
        \ ['Exception', 'Statement'],
        \ ['Float', 'Number'],
        \ ['HelpCommand', 'Statement'],
        \ ['HelpExample', 'Statement'],
        \ ['Include', 'PreProc'],
        \ ['Keyword', 'Statement'],
        \ ['Label', 'Statement'],
        \ ['Macro', 'PreProc'],
        \ ['Number', 'Constant'],
        \ ['Operator', 'Statement'],
        \ ['PreCondit', 'PreProc'],
        \ ['Repeat', 'Statement'],
        \ ['SpecialChar', 'Special'],
        \ ['SpecialComment', 'Special'],
        \ ['StorageClass', 'Type'],
        \ ['Structure', 'Type'],
        \ ['Tag', 'Special'],
        \ ['Terminal', 'Normal'],
        \ ['Typedef', 'Type'],
        \ ['asciidocQuotedEmphasized', 'PreProc'],
        \ ['diffAdded', 'String'],
        \ ['diffBDiffer', 'WarningMsg'],
        \ ['diffCommon', 'WarningMsg'],
        \ ['diffDiffer', 'WarningMsg'],
        \ ['diffIdentical', 'WarningMsg'],
        \ ['diffIsA', 'WarningMsg'],
        \ ['diffNoEOL', 'WarningMsg'],
        \ ['diffOnly', 'WarningMsg'],
        \ ['diffRemoved', 'WarningMsg'],
        \ ['htmlBold', 'Normal'],
        \ ['htmlEndTag', 'htmlTagName'],
        \ ['htmlItalic', 'Normal'],
        \ ['htmlLink', 'Function'],
        \ ['htmlSpecialTagName', 'htmlTagName'],
        \ ['htmlTag', 'htmlTagName'],
        \ ['markdownItalic', 'PreProc'],
        \ ['xmlEndTag', 'Statement'],
        \ ['xmlTag', 'Statement'],
        \ ['xmlTagName', 'Statement'],
        \ ]

  augroup Apprentice8
    autocmd!
    autocmd ColorScheme * if expand("<amatch>") == "apprentice8" | for link in links | execute 'hi link' link[0] link[1] | endfor | else | for link in links | execute 'hi link' link[0] 'NONE' | endfor | endif
  augroup END
  finish
endif

" 16-color variant
hi Normal ctermfg=Black ctermbg=Black guifg=#bcbcbc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=Black ctermbg=Black guifg=#bcbcbc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=8 ctermbg=0 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=7 ctermbg=0 guifg=#808080 guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=7 ctermbg=0 guifg=#808080 guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=11 ctermbg=0 guifg=#ffffdf guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=7 ctermbg=0 guifg=#808080 guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=8 ctermbg=NONE guifg=#6c6c6c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=Black ctermbg=NONE guifg=#bcbcbc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=9 ctermbg=NONE guifg=#d78700 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=NONE ctermbg=1 guifg=NONE guibg=#af5f5f guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=12 ctermbg=NONE guifg=#8fafd7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=6 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=2 ctermbg=NONE guifg=#5f875f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=4 ctermbg=NONE guifg=#87afaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=10 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=11 ctermbg=0 guifg=#ffffdf guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=13 ctermbg=NONE guifg=#8787af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=6 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi NonText ctermfg=8 ctermbg=NONE guifg=#6c6c6c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=Black ctermbg=8 guifg=#bcbcbc guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=0 ctermbg=0 guifg=#1c1c1c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=15 ctermbg=8 guifg=#ffffff guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=NONE ctermbg=8 guifg=NONE guibg=#6c6c6c guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=Black ctermbg=1 guifg=#262626 guibg=#af5f5f guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=10 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi MoreMsg ctermfg=6 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=10 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE guifg=#af5f5f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=0 ctermbg=8 guifg=#1c1c1c guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=8 ctermbg=8 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=0 ctermbg=8 guifg=#1c1c1c guibg=#6c6c6c guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=7 guifg=NONE guibg=#808080 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=14 ctermbg=8 guifg=#5fafaf guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=8 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi helpLeadBlank ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi helpNormal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=0 ctermbg=8 guifg=#1c1c1c guibg=#6c6c6c guisp=NONE cterm=NONE,bold gui=NONE,bold
hi StatusLineNC ctermfg=0 ctermbg=8 guifg=#1c1c1c guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=0 ctermbg=8 guifg=#1c1c1c guibg=#6c6c6c guisp=NONE cterm=NONE,bold gui=NONE,bold
hi StatusLineTermNC ctermfg=0 ctermbg=8 guifg=#1c1c1c guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=Black ctermbg=4 guifg=#262626 guibg=#87afaf guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi VertSplit ctermfg=8 ctermbg=8 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=Black ctermbg=12 guifg=#262626 guibg=#8fafd7 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=11 ctermbg=NONE guifg=#ffffdf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=8 ctermbg=NONE guifg=#6c6c6c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=10 ctermbg=Black guifg=#87af87 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=13 ctermbg=Black guifg=#8787af guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=1 ctermbg=Black guifg=#af5f5f guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=9 ctermbg=Black guifg=#d78700 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=0 ctermbg=11 guifg=#1c1c1c guibg=#ffffdf guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Search ctermfg=8 ctermbg=11 guifg=#444444 guibg=#ffffdf guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=6 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#af5f5f cterm=NONE,undercurl gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5fafaf cterm=NONE,undercurl gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5f875f cterm=NONE,undercurl gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d78700 cterm=NONE,undercurl gui=NONE,undercurl
hi ColorColumn ctermfg=NONE ctermbg=0 guifg=NONE guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
let links = [
      \ ['Boolean', 'Constant'],
      \ ['Character', 'Constant'],
      \ ['Conditional', 'Statement'],
      \ ['Debug', 'Special'],
      \ ['Define', 'PreProc'],
      \ ['Delimiter', 'Special'],
      \ ['Exception', 'Statement'],
      \ ['Float', 'Number'],
      \ ['HelpCommand', 'Statement'],
      \ ['HelpExample', 'Statement'],
      \ ['Include', 'PreProc'],
      \ ['Keyword', 'Statement'],
      \ ['Label', 'Statement'],
      \ ['Macro', 'PreProc'],
      \ ['Number', 'Constant'],
      \ ['Operator', 'Statement'],
      \ ['PreCondit', 'PreProc'],
      \ ['Repeat', 'Statement'],
      \ ['SpecialChar', 'Special'],
      \ ['SpecialComment', 'Special'],
      \ ['StorageClass', 'Type'],
      \ ['Structure', 'Type'],
      \ ['Tag', 'Special'],
      \ ['Terminal', 'Normal'],
      \ ['Typedef', 'Type'],
      \ ['asciidocQuotedEmphasized', 'PreProc'],
      \ ['diffAdded', 'String'],
      \ ['diffBDiffer', 'WarningMsg'],
      \ ['diffCommon', 'WarningMsg'],
      \ ['diffDiffer', 'WarningMsg'],
      \ ['diffIdentical', 'WarningMsg'],
      \ ['diffIsA', 'WarningMsg'],
      \ ['diffNoEOL', 'WarningMsg'],
      \ ['diffOnly', 'WarningMsg'],
      \ ['diffRemoved', 'WarningMsg'],
      \ ['htmlBold', 'Normal'],
      \ ['htmlEndTag', 'htmlTagName'],
      \ ['htmlItalic', 'Normal'],
      \ ['htmlLink', 'Function'],
      \ ['htmlSpecialTagName', 'htmlTagName'],
      \ ['htmlTag', 'htmlTagName'],
      \ ['markdownItalic', 'PreProc'],
      \ ['xmlEndTag', 'Statement'],
      \ ['xmlTag', 'Statement'],
      \ ['xmlTagName', 'Statement'],
      \ ]

augroup Apprentice8
  autocmd!
  autocmd ColorScheme * if expand("<amatch>") == "apprentice8" | for link in links | execute 'hi link' link[0] link[1] | endfor | else | for link in links | execute 'hi link' link[0] 'NONE' | endfor | endif
augroup END
finish

" Background:      dark
" Color: almost_black #1c1c1c 234 0
" Color: darker_grey  #262626 235
" Color: dark_grey    #303030 236 8
" Color: grey         #444444 238 8
" Color: medium_grey  #6c6c6c 242 8
" Color: light_grey   #808080 244 7
" Color: lighter_grey #bcbcbc 250
" Color: white        #ffffff 231 15
" Color: purple       #5f5f87 60  5
" Color: light_purple #8787af 103 13
" Color: green        #5f875f 65  2
" Color: light_green  #87af87 108 10
" Color: aqua         #5f8787 66  6
" Color: light_aqua   #5fafaf 73  14
" Color: blue         #87afaf 109 4
" Color: light_blue   #8fafd7 110 12
" Color: red          #af5f5f 131 1
" Color: orange       #d78700 172 9
" Color: ocre         #87875f 101 3
" Color: yellow       #ffffdf 230 11
" Normal           lighter_grey darker_grey
" Terminal         lighter_grey darker_grey
" LineNr           medium_grey  almost_black
" FoldColumn       light_grey   almost_black
" Folded           light_grey   almost_black
" MatchParen       yellow       almost_black
" SignColumn       light_grey   almost_black
" Comment          medium_grey  none
" Conceal          lighter_grey none
" Constant         orange       none
" Error            none         red
" Identifier       light_blue   none
" Ignore           none         none
" PreProc          aqua         none
" Special          green        none
" Statement        blue         none
" String           light_green  none
" Todo             yellow       almost_black
" Type             light_purple none
" Underlined       aqua         none        underline
" NonText          medium_grey  none
" Pmenu            lighter_grey dark_grey
" PmenuSbar        almost_black almost_black
" PmenuSel         white        grey
" PmenuThumb       none         medium_grey
" ErrorMsg         darker_grey  red
" ModeMsg          light_green  none        bold
" MoreMsg          aqua         none
" Question         light_green  none
" WarningMsg       red          none
" TabLine          almost_black grey
" TabLineFill      grey         grey
" TabLineSel       almost_black medium_grey
" Cursor           none         light_grey
" CursorColumn     none         dark_grey
" CursorLineNr     light_aqua   dark_grey
" CursorLine       none         dark_grey
" helpLeadBlank    none         none
" helpNormal       none         none
" StatusLine       almost_black medium_grey bold
" StatusLineNC     almost_black grey
" StatusLineTerm   almost_black medium_grey bold
" StatusLineTermNC almost_black grey
" Visual           darker_grey  blue
" VisualNOS        none         none        underline
" VertSplit        grey         grey
" WildMenu         darker_grey  light_blue
" Function         yellow       none
" SpecialKey       medium_grey  none
" Title            white        none
" DiffAdd          light_green  darker_grey reverse
" DiffChange       light_purple darker_grey reverse
" DiffDelete       red          darker_grey reverse
" DiffText         orange       darker_grey reverse
" IncSearch        almost_black yellow      bold
" Search           grey         yellow
" Directory        aqua         none
" SpellBad         none         none        undercurl guisp=red
" SpellCap         none         none        undercurl guisp=light_aqua
" SpellLocal       none         none        undercurl guisp=green
" SpellRare        none         none        undercurl guisp=orange
" ColorColumn      none         almost_black
