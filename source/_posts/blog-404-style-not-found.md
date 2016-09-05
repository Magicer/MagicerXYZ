title: "404界面的样式表无法加载问题"
date: 2015-10-28 21:54:13
tags: css
category: Hexo
toc: false
---
 今天终于发现了404页面样式表无法加载的的解决方法。

 原先的时候是当输入的域名后有多个`/`的时候404页面的样式表无法加载，比如访问的页面是
 `http://magicer.xyz/dd/d`。此时就无法加载样式表，而如果网址是 `http://magicer.xyz/dd `样式表就可以加载。处了此问题后，问题一直没有解决，但是今天突然发现了解决方法
 原先的link是
 ```
 <link rel="stylesheet" media="screen" href="styl4.css">
 ```
 而现在是
 ```
 <link rel="stylesheet" media="screen" href="/styl4.css">
 ```
 只加了个`/``问题就解决了，但是 在电脑上测试的时候无法加载样式表，但是传到服务器上之后就可以。头像的问题一样如此解决。