# 多版本安装

## 问题

在使用RSwitch的过程中,mac只会保留最后一次安装的框架及运行程序

## 原因

 You can also use the .pkg versions if you prefer a clicky-installer wizard, but these installers will remove any previous versions of the framework (kinda defeating the purpose)

## 解决方案
 
 使pkg安装不会重置程序框架

`sudo pkgutil --forget org.R-project.R.fw.pkg`

然后直接安装需要版本的pkg文件安装即可.
每次安装均需要使用一次重置命令.

# 版本切换

# 使用RSwitch程序进行切换

![](https://s2.loli.net/2022/11/17/BvrepmxZW5aosh1.png)

## 创建软连接以在terminal中使用rswitch:

`ln -s /Applications/RSwitch.app/Contents/Resources/rswitch-cmd /usr/local/bin/rswitch`

# 仓库链接
1. mac安装实验版二进制文件的文档说明: https://mac.r-project.org  
1. RSwitch下载界面: https://rud.is/rswitch/  
1. R for macOS pkg下载地址: https://cran.r-project.org/bin/macosx/base/
2. R for macOS tar.gz下载地址: https://cran.r-project.org/src/base/R-4/

# 参考链接:

1. [如何在mac上安装多个版本的R？](https://www.zhihu.com/question/454806030/answer/1837115610)
2. [199-想在Mac上安装多个R版本？Easy！](https://www.jieandze1314.com/post/cnposts/199/)