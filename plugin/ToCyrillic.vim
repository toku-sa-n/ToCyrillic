scriptencoding utf-8
if exists("g:loaded_to_cyrillic")
    finish
endif
let g:loaded_to_cyrillic=1

let s:save_cpo=&cpo
set cpo&vim
let g:insert_cyrillic=0
inoremap <C-J> <ESC>:call ToCyrillic#Toggle_insert_cyrillic()<CR>i
inoremap <ESC> <ESC>:call ToCyrillic#Finish_cyrillic()<CR>

let &cpo=s:save_cpo
unlet s:save_cpo
