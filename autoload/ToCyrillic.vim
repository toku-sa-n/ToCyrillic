scriptencoding utf-8
if !exists("g:loaded_to_cyrillic")
    finish
endif

let s:save_cpo=&cpo
set cpo&vim
"define_map{{{
function! Map_cyrillic()
    " upper
    inoremap A А
    inoremap B Б
    inoremap V В
    inoremap G Г
    inoremap D Д
    inoremap JE Е
    inoremap JO Ё
    inoremap ZH Ж
    inoremap Z З
    inoremap I И
    inoremap J Й
    inoremap K К
    inoremap L Л
    inoremap M М
    inoremap N Н
    inoremap O О
    inoremap P П
    inoremap R Р
    inoremap S С
    inoremap T Т
    inoremap U У
    inoremap F Ф
    inoremap X Х
    inoremap TS Ц
    inoremap CH Ч
    inoremap SH Ш
    inoremap SHCH Щ
    inoremap " Ъ
    inoremap Y Ы
    inoremap ' Ь
    inoremap E Э
    inoremap JU Ю
    inoremap JA Я

    "Capital

    inoremap Je Е
    inoremap Jo Ё
    inoremap Zh Ж
    inoremap Z З
    inoremap Ts Ц
    inoremap Ch Ч
    inoremap Sh Ш
    inoremap Shch Щ
    inoremap Ju Ю
    inoremap Ja Я

    "lower

    inoremap a а
    inoremap b б
    inoremap v в
    inoremap g г
    inoremap d д
    inoremap je е
    inoremap jo ё
    inoremap zh ж
    inoremap z з
    inoremap i и
    inoremap j й
    inoremap k к
    inoremap l л
    inoremap m м
    inoremap n н
    inoremap o о
    inoremap p п
    inoremap r р
    inoremap s с
    inoremap t т
    inoremap u у
    inoremap f ф
    inoremap x х
    inoremap ts ц
    inoremap ch ч
    inoremap sh ш
    inoremap shch щ
    inoremap " ъ
    inoremap y ы
    inoremap ' ь
    inoremap e э
    inoremap ju ю
    inoremap ja я
endfunction
"}}}

"undef{{{
function! Unmap_cyrillic()
    " upper
    iunmap A
    iunmap B
    iunmap V
    iunmap G
    iunmap D
    iunmap JE
    iunmap JO
    iunmap ZH
    iunmap Z
    iunmap I
    iunmap J
    iunmap K
    iunmap L
    iunmap M
    iunmap N
    iunmap O
    iunmap P
    iunmap R
    iunmap S
    iunmap T
    iunmap U
    iunmap F
    iunmap X
    iunmap TS
    iunmap CH
    iunmap SH
    iunmap SHCH
    iunmap "
    iunmap Y
    iunmap '
    iunmap E
    iunmap JU
    iunmap JA

    "Capital

    iunmap Je
    iunmap Jo
    iunmap Zh
    iunmap Ts
    iunmap Ch
    iunmap Sh
    iunmap Shch
    iunmap Ju
    iunmap Ja

    "lower

    iunmap a
    iunmap b
    iunmap v
    iunmap g
    iunmap d
    iunmap je
    iunmap jo
    iunmap zh
    iunmap z
    iunmap i
    iunmap j
    iunmap k
    iunmap l
    iunmap m
    iunmap n
    iunmap o
    iunmap p
    iunmap r
    iunmap s
    iunmap t
    iunmap u
    iunmap f
    iunmap x
    iunmap ts
    iunmap ch
    iunmap sh
    iunmap shch
    iunmap y
    iunmap e
    iunmap ju
    iunmap ja
endfunction
"}}}
"
function! ToCyrillic#Finish_cyrillic()
    if g:insert_cyrillic == 1
        call Unmap_cyrillic()
        let g:insert_cyrillic=0
    endif
endfunction

function! ToCyrillic#Toggle_insert_cyrillic()
    if g:insert_cyrillic==0
        let g:insert_cyrillic=1
        call Map_cyrillic()
    else
        let g:insert_cyrillic=0
        call Unmap_cyrillic()
    endif
endfunction

let &cpo=s:save_cpo
unlet s:save_cpo
