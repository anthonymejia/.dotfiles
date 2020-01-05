filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugins
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'maksimr/vim-jsbeautify'
Plugin 'scrooloose/syntastic'
Plugin 'prettier/vim-prettier'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'leafgarland/typescript-vim'

"Color
Plugin 'flazz/vim-colorschemes'

call vundle#end()

syntax enable
colorscheme molokai_dark
filetype plugin indent on

set t_co=256
set t_ut=
set ignorecase
set nocompatible              
set number
set cursorline
set relativenumber
set expandtab
set tabstop=4
set backspace=2
set encoding=UTF-8

set list
set listchars=tab:>-

imap jk <esc>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set autoread

autocmd BufEnter * set mouse=

"vim go flags
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = ['--fix']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

"vim go flags
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
