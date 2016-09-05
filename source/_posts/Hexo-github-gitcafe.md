title: "Hexo博客转移 从github到gitcafe"
date: 2015-10-11 13:27:08
tags: [github,gitcafe,hexo]
category: Hexo
---
  <img src="/image/HEXO.gif" alt="HEXO" class="full-image">  
  用Hexo和github搭建博客很长时间了，考虑到自己的博客可能主要的用户都会是国内的，所以想吧博客从github上转移到gitcafe上来，一开始打算转移到coding.net上，不过Coding不能自定义域名所以就没有用Coding，不过访问 <a href="http://magicer.coding.io">magicer.coding.io</a> 也能访问我的博客，因为代码也同步到Coding上来了。
   下面就记录一下自己博客转移的过程。<!--more-->

##gitcafe的使用
   首先注册gitcafe账户创建项目，此处我创建的项目名跟我的用户名一样。
   随后，在自己的家目录的`.ssh/`目录下找到`id_rsa.pub`文件，打开后复制内容粘贴到gitcafe的 `SSH公钥管理`中新建SSH公钥（如果配置过github会存在`.ssh/`文件夹，如果没有的话，需要配置，配置方法见：<a href="http://0.0.0.0:4001/2015/04/30/github-config/">配置github</a>，测试的时候只需要将github换成gitcafe即可。）

<!-- HTML -->
   <img src="/image_code/gitcafe-ssh-setting.png"  alt="SSH设置">



##托管代码到gitcafe
  在这里说明，我安装了git插件，安装方法：

  ```python
       npm install hexo-deployer-git --save
  ```
在` _config.yml.`中配置（可以同时托管代码在github和gitcafe上，）



```
deploy:
  type: git
  repo: <repository url>
  branch: [branch]
  message: [message]

#或者:
deploy:
  type: git
  message: [message]
  repo: 
    github: <repository url>,[branch]
    gitcafe: <repository url>,[branch]
```

##pages服务
  托管上代码之后应该分支应该会直接是`gitcafe-pages`分支，之后`项目设置`自定义域名
  <img src="/image_code/Gitcafe-pages-setting.png" alt="gitcafe-pages">

  修改域名的解析搬移即可完成。
  新建CNAME解析，解析到`gitcafe.io`,现在gitcafe已经不支持A记录解析方式。