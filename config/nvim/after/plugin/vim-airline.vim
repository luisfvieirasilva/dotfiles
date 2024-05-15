" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" Use powerline fonts
let g:airline_powerline_fonts = 1 " Need to install 'powerline-fonts' package
" Symbols for Powerline terminals
let g:airline_left_sep = "\ue0b0"      " 
let g:airline_left_alt_sep = "\ue0b1"  " 
let g:airline_right_sep = "\ue0b2"     " 
let g:airline_right_alt_sep = "\ue0b3" " 
" ro=, ws=☲, lnr=, mlnr=☰, colnr=℅, br=, nx=Ɇ, crypt=🔒, dirty=⚡
"  Note: For powerline, we add an extra space after maxlinenr symbol,
"  because it is usually setup as a ligature in most powerline patched
"  fonts. It can be over-ridden by configuring a custom maxlinenr
call extend(g:airline_symbols, {
      \ 'readonly': "\ue0a2",
      \ 'whitespace': "\u2632",
      \ 'maxlinenr': "\u2630 ",
      \ 'linenr': " \ue0a1:",
      \ 'colnr': " \u2105:",
      \ 'branch': "\ue0a0",
      \ 'notexists': "\u0246",
      \ 'dirty': "\u26a1",
      \ 'crypt': nr2char(0x1F512),
      \ }, 'keep')
"  Note: If "\u2046" (Ɇ) does not show up, try to use "\u2204" (∄)

" Set the airline theme
let g:airline_theme='catppuccin'
