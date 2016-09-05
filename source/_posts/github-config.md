title: "配置github"
date: 2015-04-30 14:32:59
tags: github 
category: Software
---


电脑系统重新安装了，很多软件都需要重新设置，鼓捣了很长时间，顺便记录一下各种配置及修改。感觉好累啊。
<!--more-->
##生成ssh

```
ssh-keygen -t rsa -C "your_email@example.com"
# Creates a new ssh key, using the provided email as a label
# Generating public/private rsa key pair.
```
第一步不用直接回车就可以，之后按照流程输入就行，
然后把id_rsa.pub文件中的内容复制到github设置里面的ssh中

##测试是否成功：
```
ssh -T git@github.com
```

当出现以下提示时即设置成功
```
Hi username! You've successfully authenticated, but GitHub does not
# provide shell access.	
```
##配置git

在终端输入
```
git config --global user.name  "username"
git config --global user.email  "email"
```
测试是否设置正确：
```
git config --global --list
```


