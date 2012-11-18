#
#  Installing:
#  Drop into site-packages/Pygments.../pygments/lexers,
#  run python _mapping.py in that directory.
#

from pygments.lexer import RegexLexer, include, bygroups
from pygments.token import *

__all__ = ['LenaLexer']

class LenaLexer(RegexLexer):
    name = 'LENA'
    aliases = ['lena']
    filenames = ['*.lena']

    tokens = {
        'root': [
            include('whitespace'),
            include('keyword'),
            (r'[0-9]+', Number.Integer),
            (r'[ \t]*[a-zA-Z0-9_]+\:', Name), # Jump-labels.
            (r'\b(beq|branch|jump)\b([ \t]+)([a-zA-Z0-9_]+)',
             bygroups(Keyword, Text, Name))
        ],
        'whitespace': [
            (r'\n', Text),
            (r'\s+', Text),
            (r'#.*?\n', Comment)
        ],
        'keyword': [
            # Namespace
            (r'\b(ctrl|node)\b', Keyword.Namespace),

            # Keywords
            (r'\b(nop|addi|sub|eq|slt|and|or|add|subi|eqi|slti'
             r'|andi|ordi|sll|srl|move|swap'
             r'|send|store|fwrd|lw|dma)\b', Keyword),

            # DMA
            (r'\b(set_read_active|set_read_base_addr'
             r'|set_read_horizontal_incr set_read_vertical_incr'
             r'|set_write_active|set_write_base_addr|set_write_horizontal_incr'
             r'|set_write_vertical_incr|start|mask)\b', Keyword.Type), 
            #Using random token just to get some colors yo.

            # Registers
            (r'\b(R0|R1|R2|R3|R4|R5|R6|R7|R8|R9|R10|R11|R12|R13|R14|R15'
             r'|VDATA|VADDR|ZERO|DMA|STATE)\b', Name.Builtin)
        ]
    }
