title: "解决vim使用过程中与遇到问题"
date: 2015-08-14 12:02:47
tags: vim
category: Software
---

##vim中无法输入中文或输入中文乱码

  打开终端输入：
``` 
vim ～/.vimrc
##也可以 vim /etc/vim/vimrc
```

在其中输入以下代码：
```
set encoding=UTF-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
```
    