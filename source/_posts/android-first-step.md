title: Android开发环境搭建
date: 2015-03-19 20:08:15
categories:  Android
tags:   [java,android]
description:   
---
这学期有安卓课程，在搭建android环境的时候还是遇到了一些问题，所以决定整理一份关于
 android环境搭建的教程留着以后使用。主要包括jdk的安装，android studio和eclipse的配置，和sdk的安装
  主要是sdk的问题较为重要，毕竟在国内无法访问<!--more-->

##（一）JDK的配置

###ubtuntu环境下配置jdk

  在官网下载jdk，地址为：
<a href="http://www.oracle.com/technetwork/java/javase/downloads/index.html">JAVA下载链接</a>
这里我们选择Java SE 8u40 Linux64位：jdk-8u40-linux-x64.tar.gz。
进入下载地址，下载之前需要接受许可协议。
下载之后，进入下载目录将JDK包放到/opt/Java目录下：

``` 
	sudo mkdir /opt/Java
	sudo mv jdk-8u40-linux-x64.tar.gz  /opt/Java
	cd /opt/Java
	sudo tar -zxvf jdk-8u40-linux-x64.tar.gz。
```
然后是配置JAVA的环境变量，linux中配置环境变量有4个地方：

/etc/environment：设置整个系统的环境，与登录用户无关

/etc/profile：为系统的每个用户设置环境信息,当用户第一次登录时,该文件被执行并从/etc/profile.d目录的配置文件中搜集shell的设置

/etc/bash.bashrc：为每一个运行bash shell的用户执行此文件.当bash shell被打开时,该文件被读取.

~/.bashrc：该文件包含专用于该登录用户bash shell的bash信息,当登录时以及每次打开新的shell时该该文件被读取。它可以把使用这些环境变量的权限控制到用户级别，如果你需要给某个用户权限使用这些环境变量，你只需要修改其个人用户主目录下的.bashrc文件就可以了。

<em>各配置的生效时间：</em>

/etc/environment：重启生效
/etc/profile：注销后登录生效
/etc/bash.bashrc：重新打开bash shell后生效
~/.bahsrc：重新打开bash shell后生效

一般我们修改/etc/profile 即可：
sudo gedit /etc/profile

在文件最后加上一下四行：
```bash
	export JAVA_HOME=/opt/Java/jdk1.7.0_55
	export JRE_HOME=${JAVA_HOME}/jre
	export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
	export PATH=${JAVA_HOME}/bin:$PATH
```
保存后注销重新登陆即可生效（source /etc/profile 命令只是使得环境变量对当前的shell有效）。
`在终端运行一下命令看是否安装完成`
```bash
	java -version
```

  ###windows




##（二）android studio和eclipse的配置

<a href="http://www.eclipse.org/downloads/">Eclipse下载地址</a>
<a href="https://developer.android.com/sdk/installing/studio.html#download">android studio官方下载地址</a>

推荐一个很好的网站上面有各种android开发需要的软件(`android studio也可以从这里下载，毕竟官网进不去`)
<a href="http://www.androiddevtools.cn/">http://www.androiddevtools.cn/</a>

  在windows上eclipse直接解压就好。
  ###eclipse配置ADT
  （1）打开eclipse找到  Help=>install new software 在打开的界面中找到Add然后点击
  打开后name随便输 location输入https://dl-ssl.google.com/android/eclipse/ 然后点击确定  如果https://dl-ssl.google.com/android/eclipse/  慢的话可以换成 http://dl-ssl.google.com/android/eclipse/ 然后点确定
（2）也可以离线安装 就是在上面推荐的网站上下载好ADT然后在打开的Add界面中点击Archive 找到下载的安装包，name随便填写一个即可。（安装的时候断开网，ADT可能会自动联网更新）
安装完成后eclipse界面上会出现两个标志。在windows选项中找到preferences配置SDK路径

<img src="/image_code/eclipse-sdk.png" alt="sdk配置" class="img-shadow">




##（三）SDK的安装配置
 下载sdk并安装，后启动会自动更新。但观望无法访问，也可以看（四）解决此问题，当然也有替代方法：
 找到Tools==>options配置
 打上勾之后，点击安装
例如：
<img src="/image_code/sdkmanager2.png" alt"sdk配置" class="img-shadow">
<img src="/image_code/sdkmanager.png" class="img-shadow">



##（四）SDK的问题与解决方案
  当进入sdk manager中时可能显示

  >Failed to fetch URL https://dl-ssl.google.com/android/repository/repository.xml, reason: java.security.cert.CertificateException: No name matching dl-ssl.google.com found

解决方法是在hosts文件下添加
```
	203.208.46.100 dl.google.com
	203.208.46.100 dl-ssl.google.com
	或
	64.233.167.104 dl.google.com
	64.233.167.104 dl-ssl.google.com
```
ubuntu下的话打开终端运行

```bash
	sudo vim  /etc/hosts
```
若是windows环境的话hosts文件在（修改的时候可能需要管理员权限）
```
	C:\Windows\System32\drivers\etc
```