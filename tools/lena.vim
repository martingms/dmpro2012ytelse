" Vim syntax file
" Language:		LENA assembly language
" Maintainer:	DMPRO 2012 Ytelse
" URL:			http://www.256shadesofgray.com
" Last Change:	2012 nov 16

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
  finish
endif
  let main_syntax = 'lena'
endif

syn case ignore

syn keyword lenaCtrl ctrl
syn keyword lenaNode node

syn keyword lenaInstr nop add sub eq slt and or addi subi eqi slti
syn keyword lenaInstr andi ori sll srl beq branch jump move swap send
syn keyword lenaInstr store fwrd lw dma

syn keyword lenaDmaInstr set_read_active set_read_base_addr
syn keyword lenaDmaInstr set_read_horizontal_incr set_read_vertical_incr
syn keyword lenaDmaInstr set_write_active set_write_base_addr set_write_horizontal_incr
syn keyword lenaDmaInstr set_write_vertical_incr start

syn keyword lenaReg R0 R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14
syn keyword lenaReg R15 VDATA VADDR ZERO DMA

syn match lenaJumpLabel "[\w]+\:"
syn match lenaJumpLabelInline "(beq|branch|jump) \@<=([\w]+)"
syn match lenaInteger contained "[-+]\=\d\+"

syn match lenaComment "#[\w ]+"

if main_syntax == "css"
  syn sync minlines=10
endif

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lena_syn_inits")
  if version < 508
    let did_lena_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lenaCtrl Statement
  HiLink lenaNode Statement
  HiLink lenaInstr Special
  HiLink lenaDmaInstr Special
  HiLink lenaReg StorageClass
  HiLink lenaJumpLabel Constant
  HiLink lenaJumpLabelInline Constant
  HiLink lenaInteger Number
  HiLink lenaComment Comment
  delcommand HiLink
endif

let b:current_syntax = "lena"

if main_syntax == 'lena'
  unlet main_syntax
endif


" vim: ts=8

