" Mapping key of moving cursor at normal and visual mode
nnoremap i k
vnoremap i k
nnoremap k j
vnoremap k j
nnoremap j h
vnoremap j h
nnoremap h i
vnoremap h i

" vim setting
set t_Co=256
set cursorline
set number
set vb

" Mapping for function
inoremap <C-j> <Nop>
inoremap <C-j> <ESC>i
inoremap <C-k> <Nop>
inoremap <C-k> <ESC>ja
inoremap <C-l> <ESC>la
inoremap <C-u> <Nop>
inoremap <C-u> <ESC>ui
nnoremap mi :call MoveLineUp()<CR>
nnoremap mk :call MoveLineDown()<CR>
inoremap <C-d> <ESC>A
inoremap <C-a> <ESC>0i
nnoremap <C-k> j<C-e>
nnoremap <Tab> <Nop>
inoremap <Tab> <Nop>
inoremap <Tab> <space><space><space><space>    
nnoremap <C-i> k<C-y>
inoremap <C-i> <Nop>
inoremap <C-i> <ESC>ka
map! <F1> <Nop>
nnoremap <F1> 1gt
inoremap <F1> <ESC>1gt
nnoremap <F2> 2gt
inoremap <F2> <ESC>2gt
nnoremap <F3> 3gt
inoremap <F3> <ESC>3gt
nnoremap <F4> 4gt
inoremap <F4> <ESC>4gt


func MoveLineUp()
let line = getpos(".")[1]
if line == 1
    return
endif
 
execute "normal! k"
let l = getline(line)
call setline(line,getline(line-1))
call setline(line-1,l)
endf

func MoveLineDown()
let line = getpos(".")[1]
if line == line("$")
    return
endif
execute "normal! j"
let l = getline(line)
call setline(line,getline(line+1))
call setline(line+1,l)
endf

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

