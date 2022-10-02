# 常规登录
服务器地址为10.9.65.31
R-servers端口为8787
在浏览器输入10.9.65.31:8787进入登录界面
R-servers账号密码与linux ssh登录账号密码相同

# 注意事项
1. 学校提供的easyconnect VPN无法登录,因为VPN仅开放22端口,无8787端口访问权限
2. 如无特殊情况,新建文件夹以上传文件,避免上传至R文件夹
3. 单独账户一般仅拥有本账户目录权限,地址为"~/"而无"/"访问使用权限

# 校外访问方式

## zerotier

1. 安装zerotier并进入指定局域网(需向管理员申请审核)
2. 进入moon服务器提高速度和稳定性(可选)
	1. Windows: 右键开始菜单,选中Windows PowerShell(管理员),输入zerotier-cli orbit 54d9966b35 54d9966b35
	2. mac: terminal输入sudo zerotier-cli orbit 54d9966b35 54d9966b35
3. 重启zerotier服务(mac可从状态栏关闭重启,Windows从右下角找到图标重启)

# R-servers使用小技巧

1.使用其他账号已安装R包避免重复安装

```R
#使用r的包
.libPaths()
#redhat(本服务器用法)
.libPaths( c( .libPaths(), "/home/r/R/x86_64-redhat-linux-gnu-library/4.1") )
#ubuntu
.libPaths( c( .libPaths(), "/home/r/R/x86_64-conda-linux-gnu-library/4.1") )

#安装R包也可以通过指定(lib = "/home/r/R/x86_64-redhat-linux-gnu-library/4.1")下载至r账户r包地址

```

2.通过代理方式进行外网数据库下载,可实现外网数据下载加速

```R
#本机代理(当前服务器无)
Sys.setenv(http_proxy="http://127.0.0.1:7890")
Sys.setenv(https_proxy="http://127.0.0.1:7890")
Sys.setenv(all_proxy="socks5://127.0.0.1:7890")
#叶子macmini代理
Sys.setenv(http_proxy="http://10.147.18.196:7890")
Sys.setenv(https_proxy="http://10.147.18.196:7890")
Sys.setenv(all_proxy="socks5://10.147.18.196:7890")
```

3.一键安装启用R包

```R
#示例,通过shelf函数可实现SCAN,Biocmanager,github包下载,如已下载可以一键启用,函数内无需双引号,可以","分割输入多参数
library(librarian)
shelf(GEOquery,dplyr,tibble,limma,lib = "/home/r/R/x86_64-redhat-linux-gnu-library/4.1")
```