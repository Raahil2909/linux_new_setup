syntax on

set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4 " > key 2 tabs
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
" set scrolloff=8
set signcolumn=yes
" set showtabline=2
" set cursorline
set splitright
set splitbelow
set foldmethod=syntax

let mapleader = ' '


call plug#begin('~/.config/nvim/plugged')
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'ycm-core/YouCompleteMe'
Plug 'markonm/traces.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mattn/emmet-vim'
call plug#end()

nnoremap ,s :source ~/.config/nvim/init.vim<CR><CR>
nnoremap ,p :PlugInstall<CR><CR>
nnoremap ,u :UndotreeShow<CR>
nnoremap ,t :Telescope<CR>
nnoremap ,ct :!ctags -R .<CR><CR>
nnoremap ,x :bn<CR>
" color scheme
" autocmd ColorScheme * highlight Normal ctermbg=000000CC guibg=NONE
" colorscheme onedark

" ycm shorcuts
nnoremap ,gd :YcmCompleter GoTo<CR> " ctrl+o to go back
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_show_diagnostics_ui = 0
" let g:ycm_global_ycm_extra_conf='/home/raahil/.ycm_extra_conf.py'


" airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnameod = ':t'
let g:airline_powerline_fonts = 1


" navigating in splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" resize the splits
noremap <C-Left> :vertical resize -5<CR> 
noremap <C-Right> :vertical resize +5<CR>
" move visually selected text up and down 
xnoremap <M-k> :move '<-2<CR>gv-gv
xnoremap <M-j> :move '>+1<CR>gv-gv

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
cnoreabbrev WQ :wq

" js beautify
nnoremap ,bj :!js-beautify -r %<CR>

" emmet 
let g:user_emmet_leader_key='<M-e>'
" emmet_leader+, to use emmet

" code folding key binds till the time i remeber them
" zo - open a fold at cursor
" zO - open all folds at cursor
" zc - close a fold at cursor
" zm - increase fold level by 1
" zM - closes all open folds
" zr - decrease foldlevel by 1
" zR - open all folds
