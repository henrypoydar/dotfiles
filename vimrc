set autoindent
set backspace=indent,eol,start     " Behave, backspace
set expandtab
set hlsearch                       " Turn on highlighted search
set ignorecase                     " Ignore case on search
set incsearch
set laststatus=2                   " Always show status line
set list                           " Handle invisible characters
set listchars=tab:▸\ ,eol:¬
set nocompatible                   " No vi compatibility
set noerrorbells                   " No noise.
set novisualbell                   " No blinking .
set nowrap                         " Turn off wrapping
set number                         " Show line numbers
set ruler                          " Show position in file
set smarttab                       " Turn on automatic indenting
set shiftwidth=2
set scrolloff=10                   " Stick in lines below and above cursor
set tabstop=2                      " Use 2 spaces for tabs
set virtualedit=all                " Turn on virtual editing
set whichwrap+=<,>,h,l             " Make backspace and cursor keys wrap accordingly
set undofile                       " Persist undo
syntax on                          " Enable syntax highlighting

" Save open file if focus is lost
au FocusLost * :wa

" Leader bindings, comma is leader
let mapleader = ","
map <leader>a :Ack<space>
map <leader>g :FufFile<CR>
map <leader>b :FufBuffer<CR>
map <leader>f :FufFile<CR>
map <leader>r :FufMruFile<CR>
map <leader>n :NERDTree<CR>

" Strip all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Hard wrap text
nnoremap <leader>q gqip

" Hashrocket mapping
imap <C-l> <Space>=><Space>

" Escape via jj
inoremap jj <ESC>

" NERDTree options
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\~$', '\.git$', '\.swp$', '\.DS_Store$']

" Change indentation based on file type
filetype plugin indent on

" Session saving
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Omni Completion
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
