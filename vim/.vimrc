" Turn off file type detection before vundle
filetype off 

" Allow people to load this vimrc with vim -u
set nocompatible              

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'maksimr/vim-jsbeautify'
Plugin 'scrooloose/syntastic'
Plugin 'prettier/vim-prettier'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

" Turn filetype detection back on
filetype plugin indent on

" Enable syntax highlight
syntax enable

" 256 Color
set t_co=256

" Fix background color for tmux
set t_ut=

" Default encoding
set encoding=UTF-8

" Set Color Scheme
colorscheme molokai_dark

" Normal backspace operation
set backspace=indent,eol,start

" Ignore case on search
set ignorecase

" Show line number and make them relative
set number
set relativenumber

" Highlight current line
set cursorline

" Tab is 4 spaces
set expandtab

" Show tabs
set list
set listchars=tab:>-

" Quick escape
imap jk <esc>

" Reload open file if changed
set autoread

" Show syntastic errors in buffer
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Vim syntastic flags
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = ['--fix']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

"Vim go flags
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_autosave = 1
let g:go_auto_type_info = 1
let g:go_dispatch_enabled = 1
let g:go_fmt_fail_silently = 0
let g:go_jump_to_error = 1
let g:go_play_open_browser = 0
let g:go_def_mapping_enabled=0
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_version_warning = 0


" Reopening a file at same line closed on
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
