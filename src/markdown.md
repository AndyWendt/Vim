# Markdown

Use wordy for finding wordy words: https://github.com/reedes/vim-wordy

:TableFormat: Format the table under the cursor like this.

gx: open the link under the cursor in the same browser as the standard gx command. <Plug>Markdown_OpenUrlUnderCursor

The standard gx is extended by allowing you to put your cursor anywhere inside a link.

Known limitation: does not work for links that span multiple lines.

ge: open the link under the cursor in Vim for editing. Useful for relative markdown links. <Plug>Markdown_EditUrlUnderCursor

The rules for the cursor position are the same as the gx command.

]]: go to next header. <Plug>Markdown_MoveToNextHeader

[[: go to previous header. Contrast with ]c. <Plug>Markdown_MoveToPreviousHeader

][: go to next sibling header if any. <Plug>Markdown_MoveToNextSiblingHeader

[]: go to previous sibling header if any. <Plug>Markdown_MoveToPreviousSiblingHeader

]c: go to Current header. <Plug>Markdown_MoveToCurHeader

]u: go to parent header (Up). <Plug>Markdown_MoveToParentHeader

:Toc: create a quickfix vertical window navigable table of contents with the headers.
