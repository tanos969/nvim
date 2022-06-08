syntax on
set showcmd
set encoding=utf-8
set laststatus=2
set noshowmode
set number
"set linebreak	
"set showbreak=<<<
set nowrap
"set textwidth=100
set showmatch
 
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set wildmode=longest,list
set smartindent	
set smarttab
set ruler
set undolevels=1000
set backspace=indent,eol,start
"set autochdir	

set nocompatible            " disable compatibility to old-time vi
set mouse=v                 " middle-click paste with 
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

call plug#begin("~/.vim/plugged")
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'sheerun/vim-polyglot'
 Plug 'valloric/youcompleteme'
 "Plug 'zxqfl/tabnine-vim'
 Plug 'scrooloose/syntastic'
 Plug 'mileszs/ack.vim'
 Plug 'w0rp/ale'
 Plug 'itchyny/lightline.vim'
 Plug 'tpope/vim-surround'
 Plug 'morhetz/gruvbox'
 Plug 'tpope/vim-fugitive'
 Plug 'mattn/emmet-vim'
 Plug 'ap/vim-css-color'
 Plug 'shougo/deoplete.nvim'
 Plug 'xuyuanp/nerdtree-git-plugin'
 Plug 'mhinz/vim-signify'
call plug#end()

"colorthemes
if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable

set splitright
set splitbelow
set background=dark
colorscheme gruvbox
let g:gruvbox_italic='1'
let g:gruvbox_italicize_comments='1'
let g:gruvbox_contrast_dark='soft'
"highlight Normal ctermbg=None guibg=None
highlight Comment cterm=italic

:let mapleader = ","

"nerdtree shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree | wincmd p
"
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" scrolling up and down multiple lines atonce
nmap <c-j> +5
vmap <c-j> +5
nmap <c-k> -5
vmap <c-k> -5

" UltiSnips stuff 
let g:UltiSnipsExpandTrigger="<tab>"
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"
"let g:UltiSnipsSnippetDirectories = ['/$HOME/.config/nvim/UltiSnips', 'UltiSnips']

"ctrlp ignore files 
set wildignore+=/tmp/,.so,.swp,.zip,/.git/,/.hg/,/.svn/,/.idea/,/.DS_Store,/vendor,/node_modules,*/public

" Use deoplete.
let g:deoplete#enable_at_startup = 1

"ack ctrl shift f
nmap <D-S-F> :Ack<space>
