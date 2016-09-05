title: "eclipse-android自动提示代码"
date: 2015-05-04 20:31:08
tags: android 
category: Software
---


##（一）设置 java 文件的代码提示功能

打 开 Eclipse 依次选择 Window > Preferences > Java > Editor - Content Assist > Auto activation triggers for Java ，设置框中默认是一个点，
```
.abcdefghijklmnopqrstuvwxyz(,
```
## （二）设置 xml 文件的代码提示功能

打 开 Eclipse 依次选择 Window > Preferences > Xml > Xml Files > Editor > Content Assist > Auto activation > Prompt when these characters are inserted ，设置框中默认是 <=: ，

```
 <=:.abcdefghijklmnopqrstuvwxyz(,
```
把delay该小一点。默认为500