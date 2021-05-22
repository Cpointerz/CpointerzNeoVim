# 简介

一个初二的小垃圾的配置文件。也就写着玩，刚好满足自己的需求。发上来只是为了让更多人了解到NeoVim

# 安装

在/.config/nvim/init.vim中使用init.vim文件

在~/.local/share/nvim/site/autoload/放置plug-vim

# 注意事项

## 快速安装所有模块

SPACE c i : 安装C/Rust/C++/Java/Python/TypeScript的语言支持模块

## 初始化必看（不想要安装多与模块可看）

Coc.nvim安装完成后按需求分别执行

:CocInstall coc-explorer  //文件树

:CocInstall coc-clangd //C支持需要clang,clangd

:CocInstall coc-rust-analyzer //Rust支持

:CocInstall coc-java //Java支持，需要Eclipse

:CocInstall coc-pyright //pyton支持

其他语言配置文件

https://github.com/neoclide/coc.nvim/wiki/Language-servers

# 已配置的快捷键

## NORMAL模式

t :文件树

o :上一个buffer

p :下一个buffer

r : 创建Rust项目

SPACE r :C/Rust/C++/Java/Python/TypeScript语言编译+运行

SPACE b :C/Rust/C++语言编译

SPACE p i :安装配置文件里指定的插件

SPACE p u :更新配置文件里指定的插件

SPACE c i : 安装C/Rust/C++/Java/Python/TypeScript的语言支持模块

SPACE c u : 更新语言支持模块

f :左右分屏切换

w :保存文件

q :退出

1-9 :快速切换序号1-9的buffer

s:搜索

, :上一个搜索结果

. :下一个搜索结果
