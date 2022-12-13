" Turn off file type detection before vundle
filetype off 

" Allow people to load this vimrc with vim -u
set nocompatible              

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

Plug 'fatih/vim-go'
Plug 'prettier/vim-prettier'
Plug 'w0rp/ale'
Plug 'flazz/vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'

call plug#end()

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
"set list
"set listchars=tab:>-

" Quick escape
imap jk <esc>

" Reload open file if changed
set autoread

" Vim go flags
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

" Coc
" " Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Ale
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" Copilot
let g:copilot_node_command = "/home/amejia/bin/node-v17.9.1-linux-x64/bin/node"

" Reopening a file at same line closed on
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
