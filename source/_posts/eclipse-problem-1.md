title: "eclipse使用过程中遇到的问题"
date: 2016-03-01 09:38:34
tags: eclipse
category: Software
---

在使用eclipse的时候遇到到很多问题，在这里记录一下。
##Failed to create the Java Virtual Machine 的问题的解决

  path等的配置都没有问题，但是运行eclipse的时候还是无法运行 ，那么怎么解决呢？
   在eclipse文件夹下找到`eclipse.ini` 文件 打开修改为下面

```
 -startup
plugins/org.eclipse.equinox.launcher_1.3.0.v20120522-1813.jar
--launcher.library
plugins/org.eclipse.equinox.launcher.win32.win32.x86_1.1.200.v20120913-144807
-product
com.android.ide.eclipse.adt.package.adtproduct
-showsplash
org.eclipse.platform
--launcher.XXMaxPermSize
128m
--launcher.defaultAction
openFile
-vmargs
-Dosgi.requiredJavaVersion=1.6
-XX:MaxPermSize=256m
-Xms512m
-Xmx512m
   ```  

即修改这几个地方：` --launcher.XXMaxPermSize
 128m`  `-Dosgi.requiredJavaVersion=1.7`
 `-XX:MaxPermSize=256m
 -Xms512m
 -Xmx512m`



