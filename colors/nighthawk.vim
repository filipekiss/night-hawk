" ===============================================================
" nighthawk
" 
" URL: https://github.com/filipekiss/night-hawk#readme
" Author: Filipe Kiss
" License: MIT
" Last Change: 2019/04/26 19:14
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="nighthawk"

hi ALEErrorSign guifg=#f89777 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEWarningSign guifg=#eecb98 ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEInfoSign guifg=#6a89a1 ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ColorColumn guifg=#262626 ctermfg=235 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi Conceal guifg=#6e8282 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Cursor guifg=NONE ctermfg=NONE guibg=#ce9ced ctermbg=183 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#0f0f0f ctermbg=233 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#262626 ctermbg=235 gui=NONE cterm=NONE
hi CursorLineNr guifg=#67b0e7 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=#8db3ff ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#0f0f0f ctermfg=233 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#b3b3b3 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#b3b3b3 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SignColumn LineNr
hi IncSearch guifg=#dbe2ee ctermfg=254 guibg=#262626 ctermbg=235 gui=reverse cterm=reverse
hi LineNr guifg=#6a89a1 ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#eecb98 ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#8ae0d0 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link MoreMsg Title
hi NonText guifg=#3a3a3a ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=#b3b3b3 ctermfg=249 guibg=#01162c ctermbg=233 gui=NONE cterm=NONE
hi PMenu guifg=NONE ctermfg=NONE guibg=#0f0f0f ctermbg=233 gui=NONE cterm=NONE
hi PMenuSel guifg=#6a89a1 ctermfg=67 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi PmenuSbar guifg=#3a3a3a ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PmenuThumb guifg=#4d4d4d ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Question guifg=#6e8282 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=#67b0e7 ctermfg=74 guibg=#01162c ctermbg=233 gui=reverse cterm=reverse
hi link SpecialKey NonText
hi SpellBad guifg=#ff637f ctermfg=204 guibg=NONE ctermbg=NONE gui=reverse,underline cterm=reverse,underline
hi link SpellLocal SpellBad
hi link SpellCap SpellBad
hi link SpellRare SpellBad
hi StatusLine guifg=#b3b3b3 ctermfg=249 guibg=#0f0f0f ctermbg=233 gui=NONE cterm=NONE
hi StatusLineNC guifg=#3a3a3a ctermfg=237 guibg=#0f0f0f ctermbg=233 gui=NONE cterm=NONE
hi TabLine guifg=#dbe2ee ctermfg=254 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
hi TabLineFill guifg=#dbe2ee ctermfg=254 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
hi TabLineSel guifg=#6a89a1 ctermfg=67 guibg=#dbe2ee ctermbg=254 gui=reverse cterm=reverse
hi Title guifg=#6a89a1 ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guifg=#6a89a1 ctermfg=67 guibg=#8ae0d0 ctermbg=116 gui=reverse cterm=reverse
hi link VisualNOS Visual
hi WarningMsg guifg=#ff637f ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#01162c ctermfg=233 guibg=#8db3ff ctermbg=111 gui=NONE cterm=NONE
hi Comment guifg=#828282 ctermfg=8 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#eecb98 ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#b3b3b3 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Character Constant
hi link Boolean Constant
hi Number guifg=#f89777 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Float Constant
hi Identifier guifg=#8db3ff ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Function Identifier
hi Statement guifg=#ce9ced ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi Operator guifg=#8ae0d0 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Keyword Operator
hi link Exception Statement
hi PreProc guifg=#ce9ced ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi Type guifg=#fbefa9 ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type
hi Special guifg=#8ae0d0 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special
hi Todo guifg=#0f0f0f ctermfg=233 guibg=#6e8282 ctermbg=8 gui=NONE cterm=NONE
hi link Whitespace SpecialKey
hi jsonString guifg=#b3b3b3 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsonEscape jsonBoolean
hi link jsonNumber jsonBoolean
hi link jsonBraces jsonKeyword
hi jsonNull guifg=#eecb98 ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#ce9ced ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeyword guifg=#8db3ff ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNumError guifg=#ff637f ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsonCommentError jsonNumError
hi link jsonSemicolonError jsonNumError
hi link jsonTrailingCommaError jsonNumError
hi link jsonMissingCommaError jsonNumError
hi link jsonStringSQError jsonNumError
hi link jsonNoQuotesError jsonNumError
hi link jsonTripleQuotesError jsonNumError
hi StartifySlash guifg=#828282 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#828282 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#67b0e7 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#b3b3b3 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#8db3ff ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyNumber guifg=#ce9ced ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" ===================================
" Generated by Estilo 1.3.3
" https://github.com/jacoborus/estilo
" ===================================
