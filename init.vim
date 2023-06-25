lua require('plugins')

set nu

"config status line
function CurrenTag()
	return tagbar#currenttag('[%s]', 'None', 'f', 'scoped-stl')
endfunction
set statusline=%<%f\ %h%m%r%{CurrenTag()}%=%-14.(%l,%c%V%)\ %P

"Tagbar
nmap <F8> :TagbarToggle<CR>


"set the tab width to 2 spaces when javascript filetype is detected
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
