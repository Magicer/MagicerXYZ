title: 使用linux遇到的一些问题
date: 2015-01-31 15:22:35
categories:  
tags: [ubuntu]
description: 
---
使用ubuntu linux 遇到的一些问题及解决方法。<!--more-->
##ubuntu的使用
1.安装完ubuntu之后，windows分区无法挂载，出现如下图所示提示：
![ubuntu挂载](/image_code/01.png)
解决方法：打开终端（快捷键ctrl+alt+t）输入：
```
sudo ntfsfix /dev/sda6
```
挂载系统盘时显示：

>Mounting volume... Windows is hibernated, refused to mount.
FAILED
Attempting to correct errors... 
Processing $MFT and $MFTMirr...
Reading $MFT... OK
Reading $MFTMirr... OK
Comparing $MFTMirr to $MFT... OK
Processing of $MFT and $MFTMirr completed successfully.
Setting required flags on partition... OK
Going to empty the journal ($LogFile)... OK
Windows is hibernated, refused to mount.
Remount failed: Operation not permitted

问题待解决。
