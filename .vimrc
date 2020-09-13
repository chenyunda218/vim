set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'elixir-editors/vim-elixir'
call vundle#end()            " required
filetype plugin indent on    " required
set number

" nertree setting
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" mapping
nnoremap <S-h> <nop>
nnoremap <S-l> <nop>
nnoremap <S-j> <nop>
nnoremap <S-k> <nop>
nnoremap <S-l> :vertical resize +1<CR>
nnoremap <S-j> :resize +1<CR>
nnoremap <S-k> :resize -1<CR>
nnoremap <S-h> :vertical resize -1<CR>
nnoremap s <nop>
nnoremap sl :vs<CR><C-w>l
nnoremap sh :vs<CR>
nnoremap sj :sp<CR><C-w>j
nnoremap sk :sp<CR><C-w>k
nnoremap <C-l> <nop>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <nop>
nnoremap <C-h> <C-w>h
nnoremap <C-k> <nop>
nnoremap <C-k> <C-w>k
nnoremap <C-j> <nop>
nnoremap <C-j> <C-w>j
nnoremap <F1> <nop>
inoremap <F1> <nop>
vnoremap <F1> <nop>
nnoremap <C-n> :NERDTreeToggle<CR>
" tab
nnoremap 1g 1gt
nnoremap 2g 2gt
nnoremap 3g 3gt
nnoremap 4g 4gt
nnoremap 5g 5gt
nnoremap 6g 6gt
nnoremap 7g 7gt
nnoremap 8g 7gt
nnoremap , <nop>
nnoremap . <nop>
nnoremap , :tabpre<CR>
nnoremap . :tabnext<CR>
" airline setting
let g:airline#extensions#tabline#enabled = 1


