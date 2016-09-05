title: "Sublime_text 的安装与使用"
date: 2015-04-30 11:44:06
tags: sublime
category: Software
---

  Sublime Text 是一个代码编辑器（Sublime Text 2是收费软件，但可以无限期试用），也是HTML和散文先进的文本编辑器。Sublime Text是由程序员Jon Skinner于2008年1月份所开发出来，它最初被设计为一个具有丰富扩展功能的Vim。
  
   SublimeText具有漂亮的用户界面和强大的功能，例如代码缩略图，Python的插件，代码段等。还可自定义键绑定，菜单和工具栏。Sublime Text 的主要功能包括：拼写检查，书签，完整的 Python API ， Goto 功能，即时项目切换，多选择，多窗口等等。Sublime Text 是一个跨平台的编辑器，同时支持Windows、Linux、Mac OS X等操作系统。
    下载地址： 
  <a href="http://www.sublimetext.com/">http://www.sublimetext.com/</a>
  
<!--more-->
  ##安装

 ```bash
 add-apt-repository ppa:webupd8team/sublime-text-2

 apt-get update

 apt-get install sublime-text

 ```
 ##安装控制器(仅适用于text2)：
 
 ctrl+`,调出控制台：
 
 输入：
 ```
 import urllib2,os;pf='Package Control.sublime-package';ipp=sublime.installed_packages_path();os.makedirs(ipp) if not os.path.exists(ipp) else None;open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()) 
  ```

  ##sublime text3安装控制器

  ```
  import  urllib.request,os;pf='Package Control.sublime-package';ipp=sublime.installed_packages_path();urllib.request.install_opener(urllib.request.build_opener(urllib.request.ProxyHandler()));open(os.path.join(ipp,pf),'wb').write(urllib.request.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read())


  ```
  ##插件推荐：
  1：emmet：前段必备
  2：autofilename
  3:allautocomplete
  4:IconFont
  5:Sublime CodeIntel:代码自动提示
  6：Bracket Highlighter：代码匹配
  7：Sublime Prefixr：Prefixr，CSS3 私有前缀自动补全
  8：ConvertToUTF8：在打开文件时将其他格式的代码转成UTF-8(此插件很有必要安装啊)
  9：Pretty Json:格式化json文件(在json如此流行的时代怎么能不安装此插件)
  添加快捷方式：（在用户自定义的快捷键文件中添加）
  ```
  { "keys": ["ctrl+shift+j"], "command": "prettify_json" }

  ```


  ##Emmet插件的使用

  快捷：
  1. 生成html格式

    输入 html:5

  2. 简写Div
  	div.container

