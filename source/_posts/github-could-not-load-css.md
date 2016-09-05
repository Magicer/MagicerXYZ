title: "修改了host文件之后github无法记载样式表的解决方案"
date: 2016-04-06 13:37:13
tags: github
category: Software
---
今天由于某种原因想要使用Google结果就修改了Host文件，结果发现，在登录Githu的时候无法加载样式表了。好悲催，好不容易Google可以使用了，不能把host文件在改回去吧，不能忍。于是，看了分析了一下github页面，发现：
<img src="/image/Github/css_js_loaded/problem.png" alt="Problem">
<img src="/image/Github/css_js_loaded/network.png" alt="Network">

  复制上图中的地址 然后在<a href="http://ipaddress.com/ip-lookup/">ipaddress.com</a>上找到该地址的IP。例如：
  <img src="/image/Github/css_js_loaded/detail.png" alt="Detail">

  查找完之后，打开host文件添加  
  ```
  	185.31.17.133  assets-cdn.github.com
  ```

  其他的资源无法加载，解决方法类似：
  下面是我往host文件中添加的记录：
  ```
 	 # Github start
 	192.30.252.141	gist.github.com
	# Github end
	#fix github cdn problem because of GFW
	#185.31.17.184  github.global.ssl.fastly.net
	23.235.40.133 assets-cdn.github.com
	185.31.17.133 avatars3.githubusercontent.com
	23.235.40.133 avatars1.githubusercontent.com
	185.31.17.133 avatars0.githubusercontent.com
	192.30.252.120 	github.com
	185.31.17.133 avatars2.githubusercontent.com
  ```
