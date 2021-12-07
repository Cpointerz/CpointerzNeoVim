"by Cpointerz

"set
set mouse=a
set runtimepath+={~/.config/nvim/autoload}
let mapleader="\<CR>"
set number
set tabstop=4
set shiftwidth=4
filetype plugin indent on

"Install_plug
call dein#begin('~/.config/nvim/plug')

call dein#add('preservim/nerdtree')
call dein#add('glepnir/dashboard-nvim')
call dein#add('liuchengxu/vim-clap')
call dein#add('preservim/tagbar')
call dein#add('rust-lang/rust.vim')
call dein#add('vim-syntastic/syntastic')
call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release' })
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

call dein#end()

"==========key=========

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
  elseif &filetype == 'c'
    execute "!gcc % -o %<.exe"
    execute "!%<.exe"
  elseif &filetype == 'cpp'
    execute "!g++ % -o %<.exe"
    execute "!%<.exe"
endif
endfunction

"vim-clap
let g:clap_layout = { 'relative': 'editor' }
let g:clap_provider_alias = {'hist:': 'command_history'}
let g:clap_theme = 'material_design_dark'

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

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
nmap <SPACE>pi :call dein#install()<CR>

nmap <SPACE>ci :CocInstall coc-java coc-pyright coc-clangd<CR>

"update_plug function
nmap <SPACE>pu :call dein#update()<CR>

nmap <SPACE>cu :CocUpdate<CR>

"set explorer
nmap t :NERDTree<CR>

"new windows
nmap v :vnew<CR>

"ESC 
imap jk <ESC>

":w
nnoremap w :w<CR>
":q
nnoremap q :q<CR>

"search
nmap , N
nmap . n


"==========set dashboard-nvim==========

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
     \ '                               V2.10.6                                   ',
     \ '',
     \ ]

let g:dashboard_custom_shortcut={
      \ 'last_session' : 's l CR',
      \ 'find_history' : 'f h CR',
      \ 'find_file' : 'f f CR',
      \ 'new_file' : 'c n CR',
      \ 'change_colorscheme' : 't c CR',
      \ 'find_word' : 'f a CR',
      \ 'book_marks' : 'f b CR',
      \ }
     
nnoremap <silent> fh<Leader> :<C-u>Clap history<CR>
nnoremap <silent> ff<Leader> :<C-u>Clap files<cr>
nnoremap <silent> tc<Leader> :<C-u>Clap colors<CR>
nnoremap <silent> fa<Leader> :<C-u>Clap blines<CR>
nnoremap <silent> fb<Leader> :<C-u>Clap marks<CR>

let g:dashboard_default_executive ='clap'

nmap ss<Leader> :<C-u>SessionSave<CR>
nmap sl<Leader> :<C-u>SessionLoad<CR>