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

Plug 'https://hub.fastgit.xyz/preservim/nerdtree'
Plug 'https://hub.fastgit.xyz/glepnir/dashboard-nvim'
Plug 'https://hub.fastgit.xyz/liuchengxu/vim-clap'
Plug 'https://hub.fastgit.xyz/liuchengxu/vista.vim'
Plug 'https://hub.fastgit.xyz/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://hub.fastgit.xyz/kyazdani42/nvim-web-devicons'
Plug 'https://hub.fastgit.xyz/akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'https://hub.fastgit.xyz/marko-cerovac/material.nvim'
Plug 'https://hub.fastgit.xyz/ryanoasis/vim-devicons'
Plug 'https://hub.fastgit.xyz/luochen1990/rainbow'
Plug 'https://hub.fastgit.xyz/wakatime/vim-wakatime'
Plug 'https://hub.fastgit.xyz/mg979/vim-visual-multi'
call plug#end()

"========================= key ========================= 

"set vista_ctags
nnoremap e :Vista<CR>
let g:vista#renderer#enable_icon = 1
let g:vista_default_executive = 'ctags'

"set themes
colorscheme material
let g:material_style = "oceanic"
let g:rainbow_active = 1
set termguicolors
lua << EOF
require('material').setup()
require("bufferline").setup{}
EOF

"vim-clap
let g:clap_layout = { 'relative': 'editor' }
let g:clap_provider_alias = {'hist:': 'command_history'}
let g:clap_theme = 'material_design_dark'

"Install_plug function
nmap pi :PlugInstall<CR>

nmap ci :CocInstall coc-pyright coc-rust-analyzer coc-clangd<CR>

"update_plug function
nmap pu :PlugUpdate<CR>

nmap cu :CocUpdate<CR>

nnoremap cc :CocList<CR>

"set explorer
nnoremap tt :NERDTree<CR>
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
inoremap jk <ESC>

"write
nnoremap w :w<CR>
"close
nnoremap q :q<CR>

"tab
nnoremap tn :tabnew<CR>
nnoremap tl :BufferLineCycleNext<CR>
nnoremap th :BufferLineCyclePrev<CR>
nnoremap tb :BufferLinePick<CR>
nnoremap tc :tabclose<CR>
nnoremap te :terminal<CR>

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
     
nnoremap <silent> fh :<C-u>Clap history<CR>
nnoremap <silent> ff :<C-u>Clap files<CR>
nnoremap <silent> fc :<C-u>Clap colors<CR>
nnoremap <silent> fa :<C-u>Clap blines<CR>
nnoremap <silent> fb :<C-u>Clap marks<CR>

let g:dashboard_default_executive ='clap'

nmap fs<Leader> :<C-u>SessionSave<CR>
nmap fl<Leader> :<C-u>SessionLoad<CR>