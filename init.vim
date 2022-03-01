"by Cpointerz

"========================= set =========================
set encoding=utf-8
set mouse=a
set runtimepath+={~/.config/nvim/autoload}
let mapleader="\<CR>"
set number
set tabstop=4
set shiftwidth=4
filetype plugin indent on

"Install_plug
call plug#begin('~/.config/nvim/plug')

Plug 'preservim/nerdtree'
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"========================= key ========================= 
"update
nmap u :!curl https://gitee.com/Cpointerz/CpointerzNeoVim/raw/master/init.vim > ~/.config/nvim/init.vim<CR>

"set Tagbar
nmap e :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 30
let g:tagbar_right = 1

"set themes
colorscheme gruvbox
set background=dark
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

"vim-clap
let g:clap_layout = { 'relative': 'editor' }
let g:clap_provider_alias = {'hist:': 'command_history'}
let g:clap_theme = 'material_design_dark'

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"Install_plug function
nmap pi :PlugInstall<CR>

nmap ci :CocInstall coc-pyright coc-rust-analyzer coc-clangd<CR>

"update_plug function
nmap pu :PlugUpdate<CR>

nmap cu :CocUpdate<CR>

"set explorer
nmap tt :NERDTree<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"new windows
nnoremap sv :vs<CR>
nnoremap sp :sp<CR>
nnoremap sl <c-w><c-l>
nnoremap sh <c-w><c-h>
nnoremap sj <c-w><c-j>
nnoremap sk <c-w><c-k>

"ESC 
imap jk <ESC>

"write
nnoremap w :w<CR>
"close
nnoremap q :q<CR>

"tab
nnoremap tn :tabnew<CR>
nnoremap tl :BufferLineCycleNext<CR>
nnoremap th :BufferLineCyclePrev<CR>
nnoremap tc :tabclose<CR>
nnoremap tb :BufferLinePick<CR>

"set TAB
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"========================= set dashboard-nvim =========================

let g:dashboard_custom_header = [
     \ '',
     \ '    .::                                   .::                            ',
     \ ' .::   .::                   .:           .::                            ',
     \ '.::       .: .::     .::       .:: .::  .:.: .:   .::    .: .::: ::::::::',
     \ '.::       .:  .::  .::  .:: .:: .::  .::  .::   .:   .::  .::        .:: ',
     \ '.::       .:   .::.::    .::.:: .::  .::  .::  .::::: .:: .::      .::   ',
     \ '.::   .:: :: .::   .::  .:: .:: .::  .::  .::  .:         .::     .::    ',
     \ '   .::::  .::        .::    .::.:::  .::   .::   .::::   .:::   .::::::::',
     \ '          .::                                                            ',
     \ '                                V3.2.0                                   ',
     \ '',
     \ ]

let g:dashboard_custom_shortcut={
      \ 'last_session' : 'f l CR',
      \ 'find_history' : 'f h CR',
      \ 'find_file' : 'f f CR',
      \ 'new_file' : 'c n CR',
      \ 'change_colorscheme' : 'f c CR',
      \ 'find_word' : 'f a CR',
      \ 'book_marks' : 'f b CR',
      \ }
     
nnoremap <silent> fh<Leader> :<C-u>Clap history<CR>
nnoremap <silent> ff<Leader> :<C-u>Clap files<cr>
nnoremap <silent> fc<Leader> :<C-u>Clap colors<CR>
nnoremap <silent> fa<Leader> :<C-u>Clap blines<CR>
nnoremap <silent> fb<Leader> :<C-u>Clap marks<CR>

let g:dashboard_default_executive ='clap'

nmap fs<Leader> :<C-u>SessionSave<CR>
nmap fl<Leader> :<C-u>SessionLoad<CR>

"========================= Symbol matching =========================
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>