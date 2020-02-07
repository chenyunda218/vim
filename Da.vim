let mapleader = "\\"
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
syntax on
set t_Co=256
set cursorline
set number
set vb
set backspace=2
highlight LineNr ctermfg=grey

" Mapping for function
inoremap <C-u> <ESC>ui
nnoremap Mi :call MoveLineUp()<CR>
nnoremap Mk :call MoveLineDown()<CR>
inoremap <C-d> <ESC>A
inoremap <C-a> <ESC>0i
nnoremap <C-k> j<C-e>
nnoremap <C-i> k<C-y>
inoremap <C-i> <Nop>
inoremap <C-i> <ESC>ka
map! <F1> <Nop>
map! <C-1> <Nop>
nnoremap <leader>1 1gt
inoremap <leader>1 <ESC>1gt
nnoremap <leader>2 2gt
inoremap <leader>2 <ESC>2gt
nnoremap <leader>3 3gt
inoremap <leader>3 <ESC>3gt
nnoremap <leader>4 4gt
inoremap <leader>4 <ESC>4gt
nnoremap <leader>5 5gt
inoremap <leader>5 <ESC>5gt
nnoremap <leader>6 6gt
inoremap <leader>6 <ESC>6gt
nnoremap <C-u> <Nop>


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
