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
Plug 'https://hub.fastgit.xyz/mg979/vim-visual-multi'
Plug 'https://hub.fastgit.xyz/morhetz/gruvbox'
Plug 'https://hub.fastgit.xyz/rakr/vim-one'
Plug 'https://hub.fastgit.xyz/feline-nvim/feline.nvim'
Plug 'https://hub.fastgit.xyz/lewis6991/gitsigns.nvim'
Plug 'https://hub.fastgit.xyz/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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
require('feline').setup()
require('gitsigns').setup()
require("bufferline").setup{}
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "cpp", "lua", "rust", "java", "python", "go"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

"vim-clap
let g:clap_layout = { 'relative': 'editor' }
let g:clap_provider_alias = {'hist:': 'command_history'}
let g:clap_theme = 'material_design_dark'

"Install_plug function
nmap pi :PlugInstall<CR>

nmap ci :CocInstall coc-pyright coc-rust-analyzer coc-clangd coc-java coc-go<CR>

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
     \ '                                V3.2.2                                   ',
     \ '',
     \ ]

let g:dashboard_custom_shortcut={
      \ 'last_session' : 'f l',
      \ 'find_history' : 'f h',
      \ 'find_file' : 'f f',
      \ 'new_file' : 'c n',
      \ 'change_colorscheme' : 'f c',
      \ 'find_word' : 'f a',
      \ 'book_marks' : 'f b',
      \ }
     
nnoremap <silent> fh :<C-u>Clap history<CR>
nnoremap <silent> ff :<C-u>Clap files<CR>
nnoremap <silent> fc :<C-u>Clap colors<CR>
nnoremap <silent> fa :<C-u>Clap blines<CR>
nnoremap <silent> fb :<C-u>Clap marks<CR>

let g:dashboard_default_executive ='clap'

nmap fs<Leader> :<C-u>SessionSave<CR>
nmap fl<Leader> :<C-u>SessionLoad<CR>