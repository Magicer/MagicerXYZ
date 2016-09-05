title: "Hexo博客主题换成了NexT"
date: 2015-8-20 20:31:37
tags: hexo
category: blog
---s
<img src="https://gitcafe.com/Magicer/Magicer/raw/gitcafe-pages/image/756094.jpg" alt="NexT" class="full-image">

博客主题由原先的Jacman换成了现在高大上的NexT主题，Jacman主题显得过于花哨，而NexT却显得高大上一点。比较了一下，还是更喜欢NexT的感觉。下面就简单说明一下过程。
详细的下载安装及设置教程在这里：<a href="http://theme-next.iissnan.com/">http://theme-next.iissnan.com/</a>
 效果图就不用看了吧，毕竟效果已经摆出来了，如果你也喜欢，那就动手吧。

##自定义NexT
 1、添加Title 。
  NexT主题的Title和网站主页上的左上角的LOGO字体是一样的，在这里我想设置成不一样的怎么办呢？其实很简单，只需要在配置文件中添加一个`name`（注意：这个配置文件的位置是HEXO的配置文件不是主题的配置文件。
  ps：我觉得还是用logo比较好，由于子集以前就是用的name，在这里就不更改了）
```
    title: Magicer|张同爽的个人博客
    name: Magicer
```
然后，在NexT主题文件夹中找到`layout`文件夹下的`_partials`文件夹下的`header.swig`文件 找到：

```
     <span class="site-title">{{ config.title }}</span>
```

将`config.title`修改为`config.name`即可
