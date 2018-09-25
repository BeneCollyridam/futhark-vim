syn keyword conditional if then else
syn keyword keyword loop with fun entry fn for while do in local type val
syn keyword keyword module open import empty reshape rearrange rotate split
syn keyword keyword concat zip unzip unsafe
syn keyword keyword let nextgroup=identifier

syn keyword function map map1 map2 map3 map4 map5 stream_map stream_map_per
syn keyword function reduce reduce_comm scan filter partition
syn keyword function stream_red stream_red_per stream_seq iota
syn keyword function replicate scatter drop

syn keyword boolean true false

syn match identifier "[a-zA-Z_][a-zA-Z0-9_]*" skipwhite contained

syn keyword type i8 i16 i32 i64 u8 u16 u32 u64 int real bool char f32 f64

syn keyword typedef type

syn keyword constant "[1-9][0-9]+" "[0-9]\.[0-9]+"

syn match operator "[\+\-\*/><%\!=&\|\^:]"

syn match number "(?<![\w\.])"
syn match number "[+-]?0x[0-9a-fA-F]+"
syn match number "([ui](8|16|32|64))?"
syn match number "(?![\w\.])"
syn match number "(?<![\w\.])"
syn match number "[+-]?[0-9]+"
syn match number "([ui](8|16|32|64))?"
syn match number "(?![\w\.])"

syn match float "(?<![\w\.])"
syn match float "(([0-9]+(\.[0-9]+)?))"
syn match float "([eE][\+\-]?[0-9]+)?"
syn match float "(f(32|64))?"
syn match float "(?![\w\.])"

syn region string start=*"* end=*"*

syn match comment "--.*$"
