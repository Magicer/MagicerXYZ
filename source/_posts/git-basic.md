title: git及github的操作
date: 2015-01-26 19:21:56
categories: Software
tags: github
description: Git是一个免费的、分布式的版本控制工具，或是一个强调速度快的源代码管理工具。Git诞生于2005年，最初是Linus Torvalds开发出来用于管理Linux内核的开发。
---

  Git是一个免费的、分布式的版本控制工具，或是一个强调速度快的源代码管理工具。Git诞生于2005年，最初是Linus Torvalds开发出来用于管理Linux内核的开发。
  <img src="https://github.com/Magicer/Image/blob/master/Hexo/github/github.jpg?raw=true" class="img-topic" >
  <!--more-->
##git的基本命令
git clone：当你有远程git版本库，只需要在本地克隆一份：

    ```
    git clone: https://github.com/Magicer/project.git
    下载指定分支
    git clone -b <branch> <remote_repo> 例如： git clone -b 指定的分支名字 
    ```
git init :也可以使用git init初始化一个本地仓库。运行了git init之后文件夹下的文件就会被进行版本控制

git add: 将当前更改或者是新增文件加入到git的索引中。

git status: 

git commit (-m): 提交当前工作区的修改内容。

```
git commit -m "提交信息"
```

git rm：从当前工作空间中和索引中删除文件 如：
```bash
git rm index.html
```
##git的分支命令
git branch : 创建分支命令。（加上分支名，不加时显示所有分支）
  git branch -d :删除分支

git checkout :  切换分支命令。
  git checkout -b： 新建并切换到该分支。

git merge gh_pages：合并分支gh_pages到当前分支