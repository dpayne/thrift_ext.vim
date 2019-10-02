" Vim syntax file
" Language: Thrift Ext
" Maintainer: Darby Payne <nobody@null.com>
" Last Change: $Date: $
"
" $Id: $
"

" Todo
syn keyword thriftExtTodo TODO todo FIXME fixme XXX xxx contained

" Comments
syn match thriftExtComment "#.*" contains=thriftExtTodo,@Spell
syn region thriftExtComment start="/\*" end="\*/" contains=thriftExtTodo,@Spell
syn match thriftExtComment "//.\{-}\(?>\|$\)\@="

" Number
syn match thriftExtNumber "-\=\<\d\+\>" contained

" Keywords
syn keyword thriftExtKeyword name enums structs version
syn keyword thriftExtBasicTypes void bool byte string binary
syn keyword thriftExtBasicTypes i8 i16 i32 i64 double
syn keyword thriftExtType map list set
syn keyword thriftExtClass struct enum

" Special
syn match thriftExtNumber "\d\+:"

if !exists("did_thriftExt_syn_inits")
  command! -nargs=+ HiLink hi def link <args>

  HiLink   thriftExtComment      Comment
  HiLink   thriftExtKeyword      Special
  HiLink   thriftExtBasicTypes   Type
  HiLink   thriftExtType         Type
  HiLink   thriftExtTodo         Todo
  HiLink   thriftExtNumber       Number
  HiLink   thriftExtSpecial      Special
  HiLink   thriftExtClass        Type

  delcommand HiLink
endif

let b:current_syntax = "thrift_ext"

