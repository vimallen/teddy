let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +11 teddy.code-workspace
badd +1 /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css
badd +0 style.css
argglobal
%argdel
$argadd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
edit /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 48 + 96) / 193)
exe 'vert 2resize ' . ((&columns * 58 + 96) / 193)
exe 'vert 3resize ' . ((&columns * 85 + 96) / 193)
argglobal
enew
balt teddy.code-workspace
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 27 - ((21 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 010|
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
argglobal
if bufexists(fnamemodify("/Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css", ":p")) | buffer /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css | else | edit /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css | endif
if &buftype ==# 'terminal'
  silent file /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 963 - ((46 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 963
normal! 014|
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
exe 'vert 1resize ' . ((&columns * 48 + 96) / 193)
exe 'vert 2resize ' . ((&columns * 58 + 96) / 193)
exe 'vert 3resize ' . ((&columns * 85 + 96) / 193)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
