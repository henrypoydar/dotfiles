" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" =============== Plugins ============================
" Using Vundle plugin manager
" See https://github.com/gmarik/vundle

filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Set Vundle to manage bundles (required)
Bundle 'gmarik/vundle'

" Git functionality
Bundle 'tpope/vim-fugitive'

" File/directory view and utilities
Bundle 'scrooloose/nerdtree'

" Solarized color scheme
Bundle 'altercation/vim-colors-solarized'

" IR Dark Gray color scheme
Bundle 'hpoydar/vim-colors-ir-dark-gray'

" Powerline
Bundle 'skwp/vim-powerline'

" Surround
Bundle 'tpope/vim-surround'

" Fuzzy search
Bundle 'kien/ctrlp.vim'

" Commenting
Bundle 'scrooloose/nerdcommenter'

" Check syntax before exiting
Bundle 'scrooloose/syntastic'

" Alignment
Bundle 'godlygeek/tabular'

" Tagbar
if executable('ctags')
  Bundle 'majutsushi/tagbar'
endif

" Code completion
Bundle 'Shougo/neocomplcache'

" Snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'

" CSS highlighting
Bundle 'ap/vim-css-color'

" Ruby
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'rodjek/vim-puppet'

" Markdown
Bundle 'plasticboy/vim-markdown'

" Append close characters (parens, quotes, etc)
Bundle 'Raimondi/delimitMate'

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set virtualedit=all             "Cursor moves up or down within a column

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Turn on syntax highlighting
syntax on

" Enable neocomplcache
let g:neocomplcache_enable_at_startup=1

" ================ Appearance =======================
set linespace=6
set background=dark
colorscheme solarized

if has('gui_running')
  set guioptions-=T   " Remove the toolbar
  "set gfn=Menlo\ for\ Powerline:h20
  set gfn=Source\ Code\ Pro\ for\ Powerline:h20
  set guioptions-=r " Hide right scrollbar
  set guioptions-=L " Hide left scrollbar
  if has('gui_macvim')
    set transparency=0  " Make window completely opaque
    colorscheme ir_dark_gray " Use macvim optimized color scheme
  endif
endif

set colorcolumn=80 " Faint line will appear to mark 80 columns
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols='Fancy'

let g:syntastic_quiet_warnings=1 " Indicate syntax errors, not warnings

" ================ Search Settings  =================

set incsearch        " Find the next match as we type the search
set hlsearch         " Hilight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks
set ic               " Ignore case
set scs              " Don't ignore case if a capital letter is added

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ NERDTree display =================

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.git$', '\.DS_Store$', '\.class$', '\.o$', '\~$']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:▸\ ,eol:¬,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

set iskeyword-=_

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Sourcing =========================

source ~/.vim/tools/run_in_terminal.vim

" ================ Writing mode =====================

let g:writer_on = 0
function! WritingModeToggle()
  if (g:writer_on == 0)
    set formatoptions=1
    set linebreak
    set wrap
    set nolist
    setlocal spell spelllang=en_us
    set breakat=\ |@-+;:,./?^I
    nnoremap j gj
    nnoremap k gk
    vnoremap j gj
    vnoremap k gk
    let g:writer_on = 1
  else
    let g:writer_on = 0
    set list
    set nospell
    set breakat=\ ^I!@*-+;:,./?
    set nowrap
  endif
endfunction

" ================ Diagnostic =======================

" Show syntax highlighting groups for word under cursor
" Mimics ctrl-shift-p behavior found in Textmate
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" ================ Mapping ==========================

let mapleader = ","

" Hashrocket to ctrl L
imap <C-l> <Space>=><Space>"

" ,n to toggle NERDTree
map <leader>n :NERDTreeToggle<cr>

" ,b to go to the next buffer
map <leader>b :bn<cr>

" ,t to toggle fuzzy finder
nnoremap <silent> <leader>t :CtrlP<cr>
" ,T to toggle fuzzy finder and clear the cache first
nnoremap <silent> <leader>T :ClearCtrlPCache<cr>\|:CtrlP<cr>

" ,c to toggle Tagbar
nnoremap <silent> <leader>c :TagbarToggle<cr>

" cmd+/ to toggle comments
map <D-/> <Plug>NERDCommenterToggle<cr>

" cmd+R to run Ruby in terminal window
map <D-r> :RunRubyFileInTerminal<cr>

" Toggle writing mode
map <leader>w :call WritingModeToggle()<cr>

" Open markdown app in Marked
map <leader>m :silent !open "%" -a /Applications/Marked.app<cr>:redraw!<cr>

" Removes trailing whitspace while preserving search history
nnoremap <silent> <leader>l :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<cr>

