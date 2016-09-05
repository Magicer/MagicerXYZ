title: "安装Hexo，搭建博客"
date: 2015-04-30 09:28:51
tags: hexo
category: Hexo
---

Hexo 是一个轻量的静态博客框架。通过Hexo可以快速生成一个静态博客框架,仅需要几条命令就可以完成,相当方便。

而架设Hexo的环境更简单了 不需要lnmp/lamp这些繁琐复杂的环境 仅仅需要一个简单的http服务器即可使用 或者使用互联网上免费的页面托管服务
比如Hexo的官方网站http://hexo.io 就是托管于github的pages服务上
 系统重装之后用hexo搭建的博客没有了，又花了整理了很长时间才搭建完成，在这里记录一下。 
<!--more-->

##安装nodejs
安装钱需要系统上有python g++ 和gcc
<a href="nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz">下载nodejs</a>
下载完了之后解压
```
tar zxvf node-v0.12.2.tar.gz -C /opt
cd /opt/node-v0.12.2
./configure 
make 
sudo make install 
```
安装完成后检查
```
node -version
```
##安装git

```
sudo apt-get install git-core
```
##安装hexo
```
npm install hexo -g
```

进入想要写文章的博客目录。
运行 hexo init
之后运行 npm install