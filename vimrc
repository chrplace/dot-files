""" Plugin handler, see https://github.com/tpope/vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()


syntax on
filetype on
filetype plugin indent on
au BufNewFile,BufRead *.pv set filetype=verilog
set shiftwidth=2
set expandtab
set softtabstop=2
nnoremap <esc> :noh<return><esc>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop> 
"set term=cons25
"set nocompatible
set background=dark
set autoindent

""" Add linenumbers in a darkgrey column
set number
highlight LineNr term=bold cterm=NONE ctermfg=Grey ctermbg=DarkGrey gui=NONE guifg=DarkGrey guibg=NONE


""" Add shorthands to align around equal signs
let mapleader=','
if exists(":Tabularize")
  nmap <Leader>t= :Tabularize /=<CR>
  vmap <Leader>t= :Tabularize /=<CR>
  nmap <Leader>t( :Tabularize /(<CR>
  vmap <Leader>t( :Tabularize /(<CR>
  nmap <Leader>t: :Tabularize /:\zs<CR>
  vmap <Leader>t: :Tabularize /:\zs<CR>
endif

" Cursorline
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline!<CR>
nnoremap <Leader>cc :set cursorline! cursorcolumn!<CR>
