syntax on

set belloff=all
set tabstop=2 softtabstop=2
set shiftwidth=2 " > key 2 tabs
set expandtab " convert tab to spaces
set smartindent
set backspace=indent,eol,start
set number relativenumber
set smartcase " case insensitive search until we enter a capital letter
set incsearch " while we search we get results simlutaneously
set exrc " source vimrc in cur folder
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set wildmenu
set path+=**
set scrolloff=8
set signcolumn=yes
" set showtabline=2
" set cursorline

call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'ycm-core/YouCompleteMe'
Plug 'markonm/traces.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
" Plug 'vim-scripts/vim-signify'
call plug#end()

nnoremap ,s :source ~/.config/nvim/init.vim<CR><CR>
nnoremap ,p :PlugInstall<CR><CR>
nnoremap ,u :UndotreeShow<CR>

" color scheme
" autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
colorscheme onedark

" ycm shorcuts
nnoremap ,gd :YcmCompleter GoTo<CR> " ctrl+o to go back
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion=1

" navigating in splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" resize the splits
noremap <C-Left> :vertical resize -5<CR> 
noremap <C-Right> :vertical resize +5<CR>
" move visually selected text up and down 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" nerd tree shorcuts to open it when no file name is given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==0 && !exists('s:std_in')|NERDTree|endif
nnoremap ,n :NERDTree<CR>
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=18

" alias
cnoreabbrev Wq :wq
cnoreabbrev W :w
cnoreabbrev Q :q
