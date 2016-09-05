title: markdown的基本使用方法
date: 2014-12-27 14:00:47
categories: Hexo
tags: [markdown,hexo ]
description: 
---
markdown的基本用法。<!--more-->
##Markdown的用法笔记 （hexo）

##如何添加目录

   >按照一定的层次添加标题，目录会自动创建。


##段落

   >段落前后都要有空行


##代码段
  >代码段`printf()`在行内可以使用反引号来标记出来

   >只需要在代码段前面加``4``个空格或制表符。
    	也可以使用

` ` `bash
 		(没有空格)
` ` `

````
	 $ hexo generate
  $ hexo server
  $ hexo deploy
````

		代码段（用的制表符）

##强调
  >斜体斜体\_     粗体两个\_\_
   \_强调的内容(斜体)\_
   \-\-强调（粗体）\-\-
  >效果如下：
   _强调的内容_
   __粗体强调__

##链接
  >[magicer(这里是链接需要显示的内容)](http://aoshizhang.com)
  格式如下，[内代表要显示的内容]，()内为链接的地址
  \[`magicer`]\(http://aoshizhang.com)

  图片链接只需要在地址链接前面加！
  ![图片](/image/465140.jpg)

##列表
  >用`-` `+`表示无序列表 如：
  - 水果
  + 零食
  - 衣服

  >有序列表只需要在`.`前面加上数字。
  1. 苹果
  2. 香蕉
  3. 柚子
  a. 橘子
  b. 梨

##表格
<table>
  <tr> <td> __table__</td> <td>__file__</td></tr>  
  <tr> <td> table</td> <td>file</td></tr>
    <tr> <td> table</td> <td>file</td></tr>
</table>


