" Vim Syntax File
" Language: Aspen

if exists("b:current_syntax")
  finish
endif

syn region  aspenBlock            start="{" end="}" transparent fold

syn keyword aspenKeyword          object class instance of
syn region  aspenString           start='"' end='"' fold
syn region  aspenChar             start="'" end="'" fold

syn match   aspenNumber           '\v-?[0-9\']+'
syn match   aspenNumber           '\v-?[0-9\']+\.[0-9']+'
syn match   aspenNumber           '\v-?[0-9\']+\#[A-Za-z0-9\']+'
syn match   aspenNumber           '\v-?[0-9\']+\#[A-Za-z0-9\']+\.[A-Za-z0-9 ]+'

syn match   aspenPunctuation      '\v(\(|\)|\<|\>|,|:|\[|\]|\{|\})'
syn match   aspenPunctuation      '->'
syn match   aspenPunctuation      '=>'

let b:current_syntax = "aspen"

hi link aspenKeyword          Keyword
hi link aspenString           String
hi link aspenChar             String
hi link aspenNumber           Number
hi link aspenPunctuation      Special
