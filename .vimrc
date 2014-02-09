" File: .vimrc

" ""
" Security settings first, with explanation
"

" Protection from trojaned directories and files. The first line prevents
" execution of configuration files in the current working directory. The
" second prevents execution of sensitive directives in the event that
" the first line fails. I-thought-I-told-you-so security. The third prevents
" execution of in-file configuration called modelines.
set noexrc
set secure
set nomodeline

" Backup files can get dagnasty. They can defeat wde and squirt sensitive
" information all over the file system.
set nobackup
set nowritebackup
set noswapfile


" The default autoindent behavior is damaged, especially when editing 
" indentation-sensitive files like Makefiles and python programs. Per-
" file-type indentation is more flexible.
set noautoindent
filetype plugin on
filetype indent on

" Good features
set backspace="2"
set display="lastline,uhex"
set ignorecase
set smartcase
set ruler
set rulerformat=%20(%f\ %y\ %2l\ (%p%%)\ %3c\ (%B)\ %o%)
syntax on
set scrolloff=3

" Bad features
set noincsearch
set nonumber
set noerrorbells
set nohlsearch
set nojoinspaces
set noshowmatch
