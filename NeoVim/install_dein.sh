#!/bin/sh
#by Cpointerz
#https://gitee.com/Cpointerz/develop-configuration

#sudo apt install git curl npm

cd ~/.config
mkdir nvim
cd ./nvim
mkdir autoload
cd ./autoload
mkdir dein
mkdir unite
mkdir vital
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein.vim > dein.vim

#dir dein
#DateTime.vim autoload.vim install.vim parse.vim toml.vim util.vim
cd ./dein
mkdir types
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein/DateTime.vim > DateTime.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein/autoload.vim > autoload.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein/install.vim > install.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein/parse.vim > parse.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein/toml.vim > toml.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein/util.vim > util.vim

#dir dein/types
#git.vim raw.vim
cd ./types
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein/types/git.vim > git.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/dein/types/raw.vim > raw.vim

#dir unite
cd ~/.config/nvim/autoload/unite
mkdir kinds
mkdir sources

#dir unite/kinds
#dein.vim
cd ./kinds
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/unite/kinds/dein.vim > dein.vim

#dir unite/sources
#dein_log.vim dein.vim
cd ~/.config/nvim/autoload/unite/sources
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/unite/sources/dein.vim > dein.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/unite/sources/dein_log.vim > dein_log.vim

#dir vital
#_dein.vim dein.vim dein.vital
cd ~/.config/nvim/autoload/vital
mkdir _dein
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/vital/_dein.vim > _dein.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/vital/dein.vim > dein.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/vital/dein.vital > dein.vital

#dir vital/_dein
cd ./_dein
mkdir System

#dir vital/_dein/System
#Job.vim
cd ./System
mkdir Job
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/vital/_dein/System/Job.vim > Job.vim

#dir vital/_dein/System/Job
#NeoVim.vim Vim.vim
cd ./Job
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/vital/_dein/System/Job/Neovim.vim > Neovim.vim
curl https://gitee.com/Cpointerz/dein.vim/raw/master/autoload/vital/_dein/System/Job/Vim.vim > Vim.vim
