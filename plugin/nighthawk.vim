" Night Hawk
" ------------------------------------------------------------------------------
" Authors
" -------
" Filipe Kiss <hello@filipekiss.com.br> http://github.com/filipekiss
" ------------------------------------------------------------------------------
" Last changed
" ------------
" 2019/04/26 19:11
" ------------------------------------------------------------------------------

if exists('g:colors_name') && g:colors_name !=? 'nighthawk'
  finish
endif

if exists('g:loaded_nighthawk')
  finish
endif
let g:loaded_nighthawk=1

function s:SetColors()
  if !exists('g:colors_name') || !exists('g:loaded_nighthawk') || g:colors_name !=? 'nighthawk'
    return
  endif

  if !exists('g:nighthawk_inactive')
    let g:nighthawk_inactive=1
  endif

  if exists('+winhighlight') && g:nighthawk_inactive == 1
    hi ActiveWindow guibg=NONE | hi InactiveWindow guibg=#3a3a3a
    set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
  endif

  " Put in a background colour for gui
  if !exists('g:nighthawk_background')
    let g:nighthawk_background=1
  endif

  if !has("gui_running") || g:nighthawk_background == 0
      hi NonText guifg=#828282 ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
      hi Normal guifg=#b3b3b3 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  endif

endfunction

augroup NightHawkColors
    autocmd VimEnter,ColorScheme * call s:SetColors()
augroup END


" Add colors to terminal vim
if has('nvim')
    let g:terminal_color_0='#0f0f0f' " Black
    let g:terminal_color_1='#f89777' " Red
    let g:terminal_color_2='#eecb98' " Yellow
    let g:terminal_color_3='#b6e072' " Green
    let g:terminal_color_4='#8db3ff' " Blue
    let g:terminal_color_5='#ce9ced' " Magenta
    let g:terminal_color_6='#8ae0d0' " Cyan
    let g:terminal_color_7='#b3b3b3' " White

    let g:terminal_color_8='#3a3a3a' " Bright Black
    let g:terminal_color_9='#ff637f' " Bright Red
    let g:terminal_color_10='#f5db5e' " Bright Yellow
    let g:terminal_color_11='#fbefa9' " Bright Green
    let g:terminal_color_12='#67b0e7' " Bright Blue
    let g:terminal_color_13='#333268' " Bright Magenta
    let g:terminal_color_14='#6e8282' " Bright Cyan
    let g:terminal_color_15='#f0f0f0' " Bright White

    let g:terminal_color_background=g:terminal_color_8
    let g:terminal_color_foreground=g:terminal_color_7
endif

