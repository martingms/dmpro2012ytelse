# To install, see http://pygments.org/docs/styles/ -> the comment at bottom

# -*- coding: utf-8 -*-
"""
    pygments.styles.soderberg
    ~~~~~~~~~~~~~~~~~~~~~~~~~

    Style for 256 Shades of Gray report and LENA assembly format.

    :copyright: Copyright 2012 by the 256 Shades of Gray team 
    :license: None, muha
"""

from pygments.style import Style
from pygments.token import Keyword, Name, Comment, String, Error, \
     Number, Operator, Generic, Whitespace


class SoderbergStyle(Style):
    """
    Style similar to the style used in the perldoc code blocks.
    """

    background_color = '#eeeedd'
    default_style = ''

    styles = {
        Whitespace:             '#bbbbbb',
        Comment:                '#228B22',
        Comment.Preproc:        '#1e889b',
        Comment.Special:        '#8B008B bold',

        String:                 '#CD5555',
        String.Heredoc:         '#1c7e71 italic',
        String.Regex:           '#B452CD',
        String.Other:           '#cb6c20',
        String.Regex:           '#1c7e71',

        Number:                 '#0C74EE',

        Operator.Word:          '#8B008B',

        Keyword:                '#8B008B bold',
        Keyword.Type:           '#FF0000 bold',
        Keyword.Namespace:      '#cb6c20 bold',
        
        Name:                   '#282029',
        Name.Class:             '#008b45 bold',
        Name.Exception:         '#008b45 bold',
        Name.Function:          '#008b45',
        Name.Namespace:         '#008b45 underline',
        Name.Variable:          '#00688B',
        Name.Constant:          '#00688B',
        Name.Decorator:         '#707a7c',
        Name.Tag:               '#8B008B bold',
        Name.Attribute:         '#658b00',
        Name.Builtin:           '#658b00',

        Generic.Heading:        'bold #000080',
        Generic.Subheading:     'bold #800080',
        Generic.Deleted:        '#aa0000',
        Generic.Inserted:       '#00aa00',
        Generic.Error:          '#aa0000',
        Generic.Emph:           'italic',
        Generic.Strong:         'bold',
        Generic.Prompt:         '#555555',
        Generic.Output:         '#888888',
        Generic.Traceback:      '#aa0000',

        Error:                  'bg:#e3d2d2 #a61717'
    }
