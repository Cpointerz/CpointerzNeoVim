"by Cpointerz
"Version2.8.1

"set
set rtp+='~/.local/share/nvim/site/autoload/'
set number
set tabstop=4
set shiftwidth=4
syntax enable
filetype plugin indent on

"Install_plug
call plug#begin()
Plug 'preservim/tagbar'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"set Tagbar
nmap e :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 30
let g:tagbar_right = 1

"set themes
let g:airline_theme="serene"

" Compile function
nmap <SPACE>r :call Compile_Run()<CR>
function! Compile_Run()
  execute "w"
  if &filetype == 'rust'
	execute "!cargo run"
  elseif &filetype == 'java'
    execute "!java %"
  elseif &filetype == 'python'
    execute "!python3 %"
endif
endfunction

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"set LEADER
let mapleader="\<CR>"

"buffer up
nmap p :bn <CR>

"buffer down
nmap o :bp <CR>

"buffer number
nnoremap ba<LEADER> :b 1<CR>
nnoremap bs<LEADER> :b 2<CR>
nnoremap bd<LEADER> :b 3<CR>
nnoremap bf<LEADER> :b 4<CR>
nnoremap bg<LEADER> :b 5<CR>
nnoremap bh<LEADER> :b 6<CR>
nnoremap bj<LEADER> :b 7<CR>
nnoremap bk<LEADER> :b 8<CR>
nnoremap bl<LEADER> :b 9<CR>
nnoremap b;<LEADER> :b 0<CR>

"C-W C-W maps to space f
nmap f <C-w><C-w>

"Install_plug function
nmap <SPACE>pi :PlugInstall<CR>

nmap <SPACE>ci :CocInstall coc-explorer coc-java coc-pyright<CR>

"update_plug function
nmap <SPACE>pu :PlugUpdate<CR>

nmap <SPACE>cu :CocUpdate<CR>

"set explorer
nmap t :CocCommand explorer<CR>

":w
nmap w :w<CR>
":q
nmap q :q<CR>

"search
nmap s /
nmap , N
nmap . n
