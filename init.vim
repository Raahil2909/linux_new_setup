syntax on

set nohlsearch
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set backspace=indent,eol,start
set number relativenumber
set smartcase
set incsearch
set exrc
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set wildmenu
set path+=**
set signcolumn=yes
set showtabline=2
set cursorline

call plug#begin('~/.config/nvim/plugged')
Plug 'markonm/traces.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

map ,s : source ~/.config/nvim/init.vim<CR><CR>
map ,p : PlugInstall<CR><CR>


" navigating in splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" move visually selected text up and down 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" nerd tree shorcuts to open it when no file name is given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==0 && !exists('s:std_in')|NERDTree|endif
nnoremap ,n :NERDTree<CR>
let NERDTreeShowHidden=1

" alias
cnoreabbrev Wq :wq
cnoreabbrev W :w
cnoreabbrev Q :q
