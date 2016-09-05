title: "git tag 、branch的使用"
date: 2015-05-04 12:21:55
tags:  github
category: Software
---
 Git是一个免费的、分布式的版本控制工具，或是一个强调速度快的源代码管理工具。Git诞生于2005年，最初是Linus Torvalds开发出来用于管理Linux内核的开发。
<!--more-->
 ##（一）git tag
 ### 列出git中现有标签
   要想列出git中现有的所有标签，输入’git tag’命令运行即可：
  ```
        git tag
        v0.1
        v1.3
   ```
   ```
   git fetch origin tag <tagname>   	##获取远程tag
   ```
  ###创建标签
 ####轻量级标签
 轻量级标签跟分枝一样，不会改变。它就是针对某个特定提交的指针
 ####带注释的标签
 然而，带注释的标签是git仓库中的对象，它是一组校验和，包含标签名、email、日期，标签信息，GPG签名和验证
 ```
 $ git tag -a v1.4 -m ‘version 1.4‘
 $ git tag
 v0.1
 v1.3
 v1.4
 $git show
 $git push origin --delete tag <tagname> ##删除远程tag

 ```
可以使用 git show 命令查看相应标签的版本信息，并连同显示打标签时的提交对象。
 ###发布标签
 通常的git push不会将标签对象提交到git服务器，我们需要进行显式的操作：
 ```
$ git push origin v0.1.2 # 将v0.1.2标签提交到git服务器
$ git push origin –tags # 将本地所有标签一次性提交到git服务器
```

 ##（二）git branch

 ```
 git branch -a ##显示远程分支 红色为远程分支
 git branch -d gh-pages  ##删除本地分支
 git push origin :branch_name  ##删除远程分支

 git branch branch_name
 git commit 
 git push origin branch_name ##提交本地分支

 ```
 ##（三）在shell中显示分支名字
 只需要把下面代码添加到 ～/.bashrc文件中即可。
 ```
 ## Parses out the branch name from .git/HEAD:
find_git_branch () {
    local dir=. head
    until [ "$dir" -ef / ]; do
        if [ -f "$dir/.git/HEAD" ]; then
            head=$(< "$dir/.git/HEAD")
            if [[ $head = ref:\ refs/heads/* ]]; then
                git_branch=" | ${head#*/*/}"
            elif [[ $head != '' ]]; then
                git_branch=" | (detached)"
            else
                git_branch=" | (unknow)"
            fi
            return
        fi
        dir="../$dir"
    done
    git_branch=''
}
green=$'\[\e[1;32m\]'
normal=$'\[\e[m\]'
PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"
PS1="\u@\h:\w$green\$git_branch $normal\$ "

 ```
