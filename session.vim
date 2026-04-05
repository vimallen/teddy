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
badd +1 Styles.vim
badd +27 style.css
badd +1 /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css
argglobal
%argdel
edit style.css
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
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
exe '1resize ' . ((&lines * 16 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 82 + 82) / 164)
exe '2resize ' . ((&lines * 15 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 82 + 82) / 164)
exe '3resize ' . ((&lines * 16 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 82 + 82) / 164)
exe '4resize ' . ((&lines * 16 + 25) / 51)
exe 'vert 4resize ' . ((&columns * 81 + 82) / 164)
exe '5resize ' . ((&lines * 15 + 25) / 51)
exe 'vert 5resize ' . ((&columns * 81 + 82) / 164)
exe '6resize ' . ((&lines * 16 + 25) / 51)
exe 'vert 6resize ' . ((&columns * 81 + 82) / 164)
argglobal
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 27 - ((8 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 028|
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
argglobal
if bufexists(fnamemodify("/Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css", ":p")) | buffer /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css | else | edit /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css | endif
if &buftype ==# 'terminal'
  silent file /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css
endif
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 27 - ((6 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 028|
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
argglobal
if bufexists(fnamemodify("/Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css", ":p")) | buffer /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css | else | edit /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css | endif
if &buftype ==# 'terminal'
  silent file /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css
endif
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 27 - ((7 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 028|
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
argglobal
if bufexists(fnamemodify("/Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css", ":p")) | buffer /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css | else | edit /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css | endif
if &buftype ==# 'terminal'
  silent file /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css
endif
balt /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
argglobal
if bufexists(fnamemodify("/Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css", ":p")) | buffer /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css | else | edit /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css | endif
if &buftype ==# 'terminal'
  silent file /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css
endif
balt /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
argglobal
if bufexists(fnamemodify("/Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css", ":p")) | buffer /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css | else | edit /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css | endif
if &buftype ==# 'terminal'
  silent file /Applications/MAMP/htdocs/dagdev/wp-content/themes/dagcurrent/style.css
endif
balt /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy/style.css
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd /Applications/MAMP/htdocs/dagdev/wp-content/themes/teddy
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 16 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 82 + 82) / 164)
exe '2resize ' . ((&lines * 15 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 82 + 82) / 164)
exe '3resize ' . ((&lines * 16 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 82 + 82) / 164)
exe '4resize ' . ((&lines * 16 + 25) / 51)
exe 'vert 4resize ' . ((&columns * 81 + 82) / 164)
exe '5resize ' . ((&lines * 15 + 25) / 51)
exe 'vert 5resize ' . ((&columns * 81 + 82) / 164)
exe '6resize ' . ((&lines * 16 + 25) / 51)
exe 'vert 6resize ' . ((&columns * 81 + 82) / 164)
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
