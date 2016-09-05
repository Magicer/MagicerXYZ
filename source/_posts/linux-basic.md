title: linux基本操作之压缩与解压命令
date: 2015-01-20 19:11:25
categories: 
tags: linux
description: 
---
Linux解压命令的基本适用。zip，tar，gzip等的命令。<!-- more -->



 ##（一）zip、unzip命令
   >压缩文件命令zip
   ```bash
   zip   压缩文件名   源文件

   zip  -r  压缩文件名  源目录

   #解压缩命令unzip

   unzip  压缩文件
   ```
   ##（二）gzip解压缩（.gz格式）
```bash
	gzip   源文件
	#压缩为.gz格式的压缩文件，源文件会消失。
```

  >解决方法（重定向）
  ```shell
  gzip   -c   源文件  >  压缩文件
  gzip  -r 目录
  #压缩目录下所有的之文件，但是不能压缩目录。
  #解压缩：
  gzip  -d 压缩文件
  #也可以：
  gunzip 压缩文件
  ```
  ##（三）.bz2格式压缩
 bzip2不能压缩目录。
  ```bash
  bzip2   源文件
  #压缩为.bz2格式，不保留源文件。

  bzip2  -k   源文件
  #压缩之后保留源文件

  #解压缩：
  bzip2   -d 压缩文件
  #解压缩 ，-k 保留压缩文件

  bunzip2  压缩文件
  #解压缩 ，-k 保留压缩文件  
  ```
 ##（四）打包命令tar
命令格式：
```bash
 tar   -zjcvf   打包文件名   源文件
      -z：压缩为.tar.gz格式
      -j：压缩为.tar.bz2格式
      -c：打包
      -v：显示过程
      -f：指定打包后的文件名
 tar   -zjxvf  打包文件名
     -z：解压缩.tar.gz格式
     -j：解压缩.tar.bz2格式
     -x：解压缩

 #指定解压缩位置：
 tar  -zxvf 压缩包.tar.gz  -C  解压目录

 #查看压缩包，但不解压：
 tar -ztvf   压缩包
```
