#
#  Installing:
#  Drop into site-packages/Pygments.../pygments/lexers,
#  run python _mapping.py in that directory,
#  and then python setup.py install.
#

from pygments.lexer import RegexLexer, include
from pygments.token import *

__all__ = ['LenaLexer']

class LenaLexer(RegexLexer):
    name = 'LENA'
    aliases = ['lena']
    filenames = ['*.lena']

    tokens = {
        'root': [
            include('keyword'),
            (r'#.*?$', Comment),
            (r'[0-9]+', Number.Integer)
        ],
        'keyword': [
            # Namespace
            (r'|ctrl|node', Keyword.Namespace),

            # Keywords
            (r'|nop|add|sub|eq|slt|and|or|addi|subi|eqi|slti'
             r'|andi|ordi|sll|srl|beq|branch|jump|jump|move|swap'
             r'|send|store|fwrd|lw|dma', Keyword),

            # DMA
            (r'|set_read_active|set_read_base_addr'
             r'|set_read_horizontal_incr set_read_vertical_incr'
             r'|set_write_active|set_write_base_addr|set_write_horizontal_incr'
             r'|set_write_vertical_incr start', Keyword.Type), #Using random token just to get some colors yo.

            # Registers
            (r'|R0|R1|R2|R3|R4|R5|R6|R7|R8|R9|R10|R11|R12|R13|R14|R15'
             r'|VDATA|VADDR|ZERO|DMA', Name.Builtin)
        ]
    }
