" Vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    set foldlevelstart=0
augroup END
" }}}

" Basic settings {{{
set nocompatible
set modelines=0

syntax on

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" show non-printable characters
set listchars=eol:$,space:·,extends:>,precedes:<
set list

set mouse=a

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

set undofile
set dir=~/tmp
" }}}

" status line {{{
set stl=%f         " Path to the file
set stl+=%=        " Switch to the right side
set stl+=%B
set stl+=\  
set stl+=%l        " Current line
set stl+=-
set stl+=%c        " Current column
set stl+=\|        " Separator
set stl+=%L        " Total lines
" }}}

" make it easier to make it easier to edit text {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" display lines navigation by arrows {{{
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
" do not let myself navigate in insert mode {{{
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" }}}
" }}} 

" searching/moving {{{
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
" }}}

" line breaking {{{
set wrap
"set textwidth=80
"set showbreak=…
" }}}

" swap lines {{{
nnoremap - ddp
nnoremap _ ddkkp
" }}}

" signature abbreviations {{{
iabbrev @Sig@ Dahn Oak <danylo.dubinin@gmail.com>
iabbrev @sig@ Dahn Oak <danylo.dubinin@gmail.com>
iabbrev @Sigf@ Danylo Dubinin <danylo.dubinin@gmail.com>
iabbrev @Sigu@ Данило Дубінін <danylo.dubinin@gmail.com>
" }}}

" move around words {{{
nnoremap H b
nnoremap L e
" }}}

" surround word {{{
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>lel
" }}}

" exit insert mode {{{
inoremap jk <esc>
" inoremap <esc> <nop>
" }}}

" filetype-specific settings {{{
" html {{{
augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
    autocmd FileType html :iabbrev <buffer>Tp <p></p><esc>F<i
    autocmd FileType html setlocal nowrap
augroup END
" }}}
" markdown {{{
augroup filetype_markdown
    autocmd!
    autocmd FileType markdown set colorcolumn=81 textwidth=79
augroup END
" }}}
" asciidoc {{{
augroup filetype_markdown
    autocmd!
    autocmd FileType asciidoc set colorcolumn=81 textwidth=79
augroup END
" }}}
" {{{ gitcommit
augroup filetype_gitcommit
    autocmd!
    autocmd Filetype gitcommit setlocal textwidth=72
augroup END
" }}}
" }}}
