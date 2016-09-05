title: "ubuntu安装32位库"
date: 2015-04-30 11:35:35
category: Software
tags: [ubuntu,linux]
---
很多软件只有32位的，有的依赖32位库还挺严重的；从ubuntu 13.10已经废弃了ia32-libs，但可以使用多架构，安装软件或包apt-get install program:i386。有的还是觉得烦，想一步到位安装所有的以前的ia32-libs，可以使用以下方法：
<!--more-->

```
    sudo -i
    cd /etc/apt/sources.list.d
    echo "deb http://archive.ubuntu.com/ubuntu/ raring main restricted universe multiverse" >ia32-libs-raring.list
    apt-get update
    apt-get install ia32-libs
```
复制代码
PS:这种方法肯定能安装上ia32-libs，但由于添加的是13.04的源，所以有没有混淆暂时不清楚，网上也有很多用新立德软件包管理器这样做；够狠，你就这么干。也可以这么安装了ia32-libs后，把/etc/apt/sources.list.d目录下的ia32-libs-raring.list删掉，然后再sudo apt-get update
