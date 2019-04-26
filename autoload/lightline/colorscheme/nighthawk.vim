" ============================================================
" nighthawk
" 
" URL: https://github.com/filipekiss/night-hawk#readme
" Author: Filipe Kiss
" License: MIT
" Last Change: 2019/04/26 18:59
" ============================================================

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

let s:p.normal.left = [[["#0f0f0f", 233], ["#b3b3b3", 249]], [["#dbe2ee", 254], ["#3a3a3a", 237]]]
let s:p.normal.middle = [[["#828282", 8], ["#3a3a3a", 237]]]
let s:p.normal.right = [[["#0f0f0f", 233], ["#b3b3b3", 249]], [["#828282", 8], ["#3a3a3a", 237]]]
let s:p.normal.error = [[["#0f0f0f", 233], ["#f89777", 210]]]
let s:p.normal.warning = [[["#f5db5e", 221], ["#828282", 8]]]

let s:p.inactive.left = [[["#828282", 8], ["#262626", 235]], [["#828282", 8], ["#262626", 235]]]
let s:p.inactive.middle = [[["#828282", 8], ["#262626", 235]]]
let s:p.inactive.right = [[["#828282", 8], ["#262626", 235]], [["#828282", 8], ["#262626", 235]]]

let s:p.insert.left = [[["#0f0f0f", 233], ["#f5db5e", 221]], [["#dbe2ee", 254], ["#3a3a3a", 237]]]
let s:p.insert.middle = [[["#828282", 8], ["#3a3a3a", 237]]]
let s:p.insert.right = [[["#0f0f0f", 233], ["#f5db5e", 221]], [["#828282", 8], ["#3a3a3a", 237]]]

let s:p.replace.left = [[["#0f0f0f", 233], ["#ce9ced", 183]], [["#dbe2ee", 254], ["#3a3a3a", 237]]]
let s:p.replace.middle = [[["#828282", 8], ["#3a3a3a", 237]]]
let s:p.replace.right = [[["#0f0f0f", 233], ["#ce9ced", 183]], [["#828282", 8], ["#3a3a3a", 237]]]

let s:p.visual.left = [[["#0f0f0f", 233], ["#6a89a1", 67]], [["#dbe2ee", 254], ["#3a3a3a", 237]]]
let s:p.visual.middle = [[["#828282", 8], ["#3a3a3a", 237]]]
let s:p.visual.right = [[["#0f0f0f", 233], ["#6a89a1", 67]], [["#828282", 8], ["#3a3a3a", 237]]]

let s:p.tabline.left = [[["#dbe2ee", 254], ["#3a3a3a", 237]]]
let s:p.tabline.tabsel = [[["#0f0f0f", 233], ["#6a89a1", 67]]]
let s:p.tabline.middle = [[["#dbe2ee", 254], ["#3a3a3a", 237]]]
let s:p.tabline.right = [[["#dbe2ee", 254], ["#3a3a3a", 237]]]

let g:lightline#colorscheme#nighthawk#palette = lightline#colorscheme#flatten(s:p)

" ===================================
" Generated by Estilo 1.3.3
" https://github.com/jacoborus/estilo
" ===================================
