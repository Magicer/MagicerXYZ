title: "为Hexo NexT主题添加ShareSDK的分享"
date: 2016-04-19 11:43:59
tags: hexo,NexT
category: Hexo
---

今天发现一个分享的的sdk,可以在各个平台使用。由于不太喜欢主题提供的几个分享的样式。就试了试怎么这个。发现还是不错滴。。下面是分享的按钮和分享的样式：
**效果见下面----**
传送门：[ShareSDK][3]
[Web集成官方文档][4]

下面是在网页上分享按钮的代码，只需要将以下代码添加到想要显示的位置即可。`appkey`是你自己的appkey。
```
<!--MOB SHARE BEGIN-->
<div class="-mob-share-ui-button -mob-share-open">分享</div>
<div class="-mob-share-ui" style="display: none">
    <ul class="-mob-share-list">
        <li class="-mob-share-weibo"><p>新浪微博</p></li>
        <li class="-mob-share-tencentweibo"><p>腾讯微博</p></li>
        <li class="-mob-share-qzone"><p>QQ空间</p></li>
        <li class="-mob-share-qq"><p>QQ好友</p></li>
        <li class="-mob-share-renren"><p>人人网</p></li>
        <li class="-mob-share-kaixin"><p>开心网</p></li>
        <li class="-mob-share-douban"><p>豆瓣</p></li>
        <li class="-mob-share-facebook"><p>Facebook</p></li>
        <li class="-mob-share-twitter"><p>Twitter</p></li>
    </ul>
    <div class="-mob-share-close">取消</div>
</div>
<div class="-mob-share-ui-bg"></div>
<script id="-mob-share" src="http://f1.webshare.mob.com/code/mob-share.js?appkey=你的appkey"></script>
<!--MOB SHARE END-->            
```
##添加到NexT中
那么怎么添加到next主题上呢。步骤如下
###1.创建文件
我们首先要在主题文件夹下的`layout`文件夹找到`_partials`下的`share`文件夹，之后添加一个名为`sharesdk.swig`的文件。我们可以看出来。这个文件夹下放的全部是分享的配置文件.添加的内容为上面的那一大段代码。只需要修改一部分。修改的部分为：
```
<script id="-mob-share" src="http://f1.webshare.mob.com/code/mob-share.js?appkey={{ theme.shareSDKappkey }}"></script>
```
修改这写的目的是为了让我们能够在主题的配置文件中添加appkey。（只需要在主题的配置文件中添加一个`shareSDKappkey`并为其附上值即可）。
###2添加可选配置
虽然我们添加了sharesdk的分享的按钮了，但是如果有一天我们不想使用了呢。当然，很简单。只需要修改配置文件就可以了。那么如何实现呢？
首先，找到主题文件夹下的`layout`文件夹下的`post.swig`
大概在16行左右添加 
```
    <div class="post-spread">
      {% if theme.jiathis %}
        {% include '_partials/share/jiathis.swig' %}
      {% elseif theme.baidushare %}
        {% include '_partials/share/baidushare.swig' %}
      {% elseif theme.add_this_id %}
        {% include '_partials/share/add-this.swig' %}
      {% elseif theme.duoshuo_shortname and theme.duoshuo_share %}
        {% include '_partials/share/duoshuo_share.swig' %}
        {% elseif theme.sharesdk %}
        {% include '_partials/share/sharesdk.swig' %}
      {% endif %}
    </div>

```
添加了代码
```
{% elseif theme.sharesdk %}
        {% include '_partials/share/sharesdk.swig' %}
```
这段代码就是根据主题文件的配置，来为文档添加相应的swig文件。要想实现在配置文件中选择性的使用分享功能，只需要在配置文件中修改即可。
##修改_config.yml
接下来就是修改项目的配置文件了。
在主题的配置文件中添加：
```
#Share
sharesdk: true
shareSDKappkey: appkey

```
如果想使用就可以设置为true并添加appkey了。当然不想使用。直接注释就可以了。


  [3]: http://sharesdk.mob.com/#/sharesdk
  [4]: http://wiki.mob.com/sharesdk-for-web%E5%BF%AB%E9%80%9F%E9%9B%86%E6%88%90/