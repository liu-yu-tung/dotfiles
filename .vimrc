filetype plugin indent on

" PlugInstall
" PlugUpdate
call plug#begin() 
  Plug 'LunarWatcher/auto-pairs'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/syntastic'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'arcticicestudio/nord-vim'
call plug#end()

syntax on


set mouse=a
set cursorline

set shiftwidth=4
set tabstop=4
set expandtab
set scrolloff=2

set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch

set showcmd
set showmode

set history=1000

set wildmenu
set wildmode=list:longest

set foldmethod=indent
set nofoldenable


set splitbelow
set splitright

set belloff=all

nnoremap J 4j
nnoremap K 4k
nnoremap W 3w
nnoremap E 3e
nnoremap B 3b

" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
"
"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endifnnoremap <C-f> :NERDTreeFind<CR>

colorscheme nord
