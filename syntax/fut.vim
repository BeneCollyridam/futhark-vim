syn keyword conditional if then else
syn keyword keyword loop with entry for while do in local type val
syn keyword keyword module open import
syn keyword keyword concat zip unzip unsafe
syn keyword FutharkBinding let entry nextgroup=FutIdentifier,TupleIdentifier skipwhite skipempty

syn keyword function map map1 map2 map3 map4 map5 stream_map stream_map_per
syn keyword function reduce reduce_comm scan filter partition
syn keyword function stream_red stream_red_per stream_seq iota
syn keyword function replicate scatter drop
syn keyword function rotate split flatten unflatten
syn keyword function curry uncurry
syn keyword function id const

syn keyword boolean true false

syn match FutIdentifier "[a-zA-Z_][a-zA-Z0-9_]*" skipwhite contained
syn region TupleIdentifier       start='(' end=')' fold transparent contains=FutIdentifier nextgroup=FutharkAssigment

syn keyword type i8 i16 i32 i64 u8 u16 u32 u64 int real bool char f32 f64

syn keyword typedef type

syn keyword constant "[1-9][0-9]+" "[0-9]\.[0-9]+"

syn match FutharkAssigment "="
"syn match FutharkOperator  "\v[\+\-\*/><%\!&\|\^:]"
syn match FutharkOperator "\v\+\+"
syn match FutharkOperator "\v\=\="
syn match FutharkOperator "\v\!\="
syn match FutharkOperator "\v>\->"
syn match FutharkOperator "\v<\-<"
syn match FutharkOperator "\v\|>"
syn match FutharkOperator "\v<\|"

syn match FutharkOperator "\v\(\ *[\+\-\*\/]\ *\)"
syn match FutharkOperator "\v\(\ *\.[0-9]\ *\)"

syn match Number "(?<![\w\.])"
syn match Number "\v([+-]?(0x[0-9a-fA-F]+|[0-9]+)([ui](8|16|32|64))?)"
syn match Number "(?![\w\.])"

syn match float "(?<![\w\.])"
syn match float "\v(([0-9]+\.[0-9]+|[0-9]+f(32|64))(f(32|64))?)"
syn match float "\v([eE][\+\-]?[0-9]+)"
syn match float "(?![\w\.])"

syn region string start=/"/ skip=/\\"/ end=/"/

syn match comment "--.*$"

hi def link FutIdentifier Function
hi def link FutharkBinding keyword
hi def link number constant
hi def link FutharkOperator operator
"hi def link TupleIdentifier keyword
