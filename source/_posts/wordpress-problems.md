title: 搭建wordpress后出现的问题
date: 2015-03-12 15:42:51
categories: Blog
tags: wordpress
description:  
---
<!--more-->
####（一）出现 上传的文件尺寸超过php.ini中定义的upload_max_filesize值.的问题

找到php.ini文件 (一般在/etc/php /etc  /usr/local/etc下)打开后找到upload_max_filesize修改其默认值（2M）。
然后重启apache2（我用ubuntu14.04文件在/etc/php5/apache2下）。

####（二）无法建立目录wp-content/uploads/2015/03。有没有上级目录的写权限？
使用PHPMyAdmin进入数据库。数据库管理的高级管理可以进去。
找到wordpress数据库，打开wp_options表
修改表中键名为upload_path的键值 这个值是一个路径（可能在表的第二页）
里面是空的，添加“wp-content/uploads”就解决了。＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝双引号必加！类似于注册表键值

####（三）解决"要执行请求的操作，WordPress需要访问您网页服务器的权限"
在/var/www/wordpress文件夹下的wp-config.php添加如下代码 

	define("FS_METHOD", "direct");
	define("FS_CHMOD_DIR", 0777);
	define("FS_CHMOD_FILE", 0777);

####（四）解决无法创建文件夹的问题

在/ver/www/wordpress下，把wp-content的文件权限改成777

	sudo chmod 777 wp-content