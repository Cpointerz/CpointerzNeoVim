# CpointerzNeoVim

一个初三的小垃圾的配置文件。也就写着玩，刚好满足自己的需求。发上来只是为了让更多人了解到NeoVim  

# 安装  
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
te :Terminal  
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
Tab :下一个补全选项  
Shift Tab :上一个补全选项  
```
