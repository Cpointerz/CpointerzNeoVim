# CpointerzNeoVim

一个初三的小垃圾的配置文件。也就写着玩，刚好满足自己的需求。发上来只是为了让更多人了解到NeoVim  
vscode.json是一个能在vscode上跑的配置文件，只含有少量的快捷键绑定  

# 安装  
### wakatime可以删除，不影响正常使用，但是可以统计coding时间和数量
```
git clone https://gitee.com/Cpointerz/CpointerzNeoVim.git ~/.config/nvim  
mkdir ~/.config/nvim/autoload/  
curl https://gitee.com/Cpointerz/vim-plug/raw/master/plug.vim > ~/.config/nvim/autoload/plug.vim  
```

# 注意事项  

## 首次使用  
安装```sudo apt install universal-ctags npm git fonts-firacode clangd```  
[nerd-fonts(FiraCode)需要额外安装](https://github.com/ryanoasis/nerd-fonts)  

## 快速安装所有模块  
p i + c i: 安装Rust/Java/Python的语言支持模块  

# 已配置的快捷键

## NORMAL模式  
```
fs :保存会话  
fl :加载会话  
sv :左右切割屏幕  
sp :上下切割屏幕  
sh :切换至左边屏幕  
sl :切换至右边屏幕  
sj :切换至下面屏幕  
sk :切换至上面屏幕  
tn :新建TAB  
tl :切换至下一个TAB  
th :切换至上一个TAB 
tb :切换至映射Buffer区，并可用字母快速切换Buffer 
tc :关闭TAB   
tt :目录树
te :Terminal(当处于TERMINAL模式时，需要<C-\><C-n>返回NORMAL)  
e :TagBar  
pi :安装配置文件里指定的插件  
pu :更新配置文件里指定的插件  
ci :安装语言支持模块  
cu :更新语言支持模块  
cc :CocList  
w :保存文件  
q :退出  
fa CR :搜索单词  
ff CR :搜索文件  
fh CR :搜索记录  
fc CR :修改颜色  
fb CR :标签  
```  
## INSERT模式
```  
jk :ESC
Tab :下一个补全选项  
Shift Tab :上一个补全选项  
```
## 多光标支持  
```  
基本用法

    用Ctrl-N选择单词（像Sublime Text/VS Code中的Ctrl-d）。
    用Ctrl-Down/Ctrl-Up创建垂直游标
    用Shift-Arrows一次选择一个字符
    按n/N获得下一个/上一个出现的字符
    按[/]选择下一个/上一个光标
    按q键跳过当前，获得下一个出现的字符
    按Q键，删除当前光标/选择
    用i,a,I,A启动插入模式

两种主要模式

    在光标模式下，命令的作用与普通模式相同
    在扩展模式下，命令与视觉模式下的命令一样工作。
    按Tab键在 "光标 "和 "扩展 "模式之间切换。
```
