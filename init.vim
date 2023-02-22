lua require('plugins')

set nu
"config status line
function CurrenTag()
	return tagbar#currenttag('[%s]', 'None', 'f', 'scoped-stl')
endfunction
set statusline=%<%f\ %h%m%r%{CurrenTag()}%=%-14.(%l,%c%V%)\ %P
