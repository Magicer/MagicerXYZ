title: "Hexo博客主题NexT使用自定义的CSS样式"
date: 2015-10-12 14:21:35
tags: [hexo,NexT]
category: Hexo
---
  今天，创建自己的about页面的时候，像使用自定义的css样式，就像这是不是NexT可以使用自定义的CSS样式，片尝试了一下，还是可以的，因为markdown支持html标签，使用自定义的CSS样式还是不错的。下面总结一下具体的使用过程：

##添加样式支持
  为了不吧原先的像是文件搞得太乱，这里，添加子集的样式文件。
  首先，在样式文件的`source`文件夹下找到`css`文件夹，打开`main.styl`文件，在最后添加：

```
    //My Layer
    //--------------------------------------------------
    @import "_my/mycss";
```

##新建自定义样式

找到样式文件夹`css` 新建`_my`文件夹，在其中新建`mycss.styl`文件，之后就可以按照stylus的格式自定义样式了。
##例子
例如：我想在文章中添加个自定义样式的按钮，怎么做呢？？？

打开新建的`mycss.styl`文件，在其中添加样式：

```
.myButton {
    background-color:#0f94bd;
    -moz-border-radius:15px;
    -webkit-border-radius:15px;
    border-radius:15px;
    display:inline-block;
    cursor:pointer;
    color:#ffffff;
    font-family:Arial;
    font-size:17px;
    padding:11px 27px;
    text-decoration:none;
    text-shadow:0px 1px 0px #2f6627;
}
.myButton:hover {
    background-color:#5cbf2a;
}
.myButton:active {
    position:relative;
    top:1px;
}

```
(ps:这里直接使用的css的格式写的，因为css的代码在网上很好找到，而stylus预处理器的就不那么容易找到了，stylus一样支持css格式，所以在这里直接使用了css文件，没有写成stylus语法。其实让我写我也不会，哈哈！)
  引用：在想要引用的时候添加 
```
<a href="#" class="myButton">MyButton</a>
```
样式如下：
<a href="#" class="myButton">MyButton</a>
效果已经出来了，怎么样？？是不是瞬间高大上。。有想要使用的样式，自行百度，找到后粘贴即可使用。

##推荐
推荐一个css button样式的生成网站：<a href="http://www.bestcssbuttongenerator.com/">http://www.bestcssbuttongenerator.com/</a>
