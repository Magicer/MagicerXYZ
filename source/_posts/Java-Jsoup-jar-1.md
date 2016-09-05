title: "Jsoup.jar的使用"
date: 2016-03-02 20:34:25
tags:  [Java, Jsoup]
category: Java
---
Jsoup的使用方法参见：<a href="http://www.open-open.com/jsoup/">http://www.open-open.com/jsoup/</a>.上面是中文版的也有官方API。


```JAVA
		/*
		 * 通过网页来获取数据。
		 * 
		 */
		Document doc =Jsoup.connect("http://blog.magicer.xyz/").get();
		/*
		 * 得到页面中 第一个class为“post-title”的内容，然后输出其的值
		 *
		  */
		org.jsoup.nodes.Element string=doc.getElementsByClass("post-title").first();
				System.out.println(string); /*输出结果为
				<h1 class="post-title" itemprop="name headline">
				 <a class="post-title-link" 
				 href="/2016/03/eclipse-import-jar/" itemprop="url"> 
				 Eclipse如何导入外部jar包 </a> </h1>
				*/
				String title=string.text();
		  /*
		   * 获得class名为post-title-link的属性的值
		   * (此处是一个a标签的href属性的值：/2016/03/eclipse-import-jar/)
		   * 
		   */
		  String string2=doc.getElementsByClass("post-title-link").attr("href");
		  System.out.println(string2);   //输出结果为：/2016/03/eclipse-import-jar/
		System.out.println(title);  	//输出结果是：Eclipse如何导入外部jar包 
		
		/*
		 * 通过get()方法得到body的内容 get()方法的索引（index）从0 （即first（）方法）开始
		 * 	get(0)=first();
		 * 
		 */
		org.jsoup.nodes.Element postBodyString= doc.getElementsByClass("post-body").get(0);
		
		String postBody=postBodyString.text();  //得到post-body的内容
		System.out.println(postBody);  // 可以正常的输出post-body的内容


		/*
		 * 获得menu菜单项
		 * 
		 */
		org.jsoup.nodes.Element element=doc.getElementsByClass("menu").first();
		
		String menu= element.text();
		System.out.println(menu);  // 输出结果为：首页 分类 归档 标签 关于 
```

Elements这个对象提供了一系列类似于DOM的方法来查找元素，抽取并处理其中的数据。具体如下：

###查找元素


getElementById(String id)
getElementsByTag(String tag)
getElementsByClass(String className)
getElementsByAttribute(String key) (and related methods)
Element siblings: siblingElements(), firstElementSibling(), lastElementSibling();nextElementSibling(), previousElementSibling()
Graph: parent(), children(), child(int index)
###元素数据
attr(String key)获取属性attr(String key, String value)设置属性
attributes()获取所有属性
id(), className() and classNames()
text()获取文本内容text(String value) 设置文本内容
html()获取元素内HTMLhtml(String value)设置元素内的HTML内容
outerHtml()获取元素外HTML内容
data()获取数据内容（例如：script和style标签)
tag() and tagName()
###操作HTML和文本
append(String html), prepend(String html)
appendText(String text), prependText(String text)
appendElement(String tagName), prependElement(String tagName)
html(String value)


###Selector选择器概述
tagname: 通过标签查找元素，比如：a
ns|tag: 通过标签在命名空间查找元素，比如：可以用 fb|name 语法来查找 <fb:name> 元素
`#id`: 通过ID查找元素，比如：#logo
.class: 通过class名称查找元素，比如：.masthead
[attribute]: 利用属性查找元素，比如：[href]
[^attr]: 利用属性名前缀来查找元素，比如：可以用[^data-] 来查找带有HTML5 Dataset属性的元素
[attr=value]: 利用属性值来查找元素，比如：[width=500]
[attr^=value], [attr$=value], [attr*=value]: 利用匹配属性值开头、结尾或包含属性值来查找元素，比如：[href*=/path/]
[attr~=regex]: 利用属性值匹配正则表达式来查找元素，比如： img[src~=(?i)\.(png|jpe?g)]
*: 这个符号将匹配所有元素
Selector选择器组合使用
el#id: 元素+ID，比如： div#logo
el.class: 元素+class，比如： div.masthead
el[attr]: 元素+class，比如： a[href]
任意组合，比如：a[href].highlight
ancestor child: 查找某个元素下子元素，比如：可以用.body p 查找在"body"元素下的所有p元素
parent > child: 查找某个父元素下的直接子元素，比如：可以用div.content > p 查找 p 元素，也可以用body > * 查找body标签下所有直接子元素
siblingA + siblingB: 查找在A元素之前第一个同级元素B，比如：div.head + div
siblingA ~ siblingX: 查找A元素之前的同级X元素，比如：h1 ~ p
el, el, el:多个选择器组合，查找匹配任一选择器的唯一元素，例如：div.masthead, div.logo
###伪选择器selectors
:lt(n): 查找哪些元素的同级索引值（它的位置在DOM树中是相对于它的父节点）小于n，比如：td:lt(3) 表示小于三列的元素
:gt(n):查找哪些元素的同级索引值大于n，比如： div p:gt(2)表示哪些div中有包含2个以上的p元素
:eq(n): 查找哪些元素的同级索引值与n相等，比如：form input:eq(1)表示包含一个input标签的Form元素
:has(seletor): 查找匹配选择器包含元素的元素，比如：div:has(p)表示哪些div包含了p元素
:not(selector): 查找与选择器不匹配的元素，比如： div:not(.logo) 表示不包含 class="logo" 元素的所有 div 列表
:contains(text): 查找包含给定文本的元素，搜索不区分大不写，比如： p:contains(jsoup)
:containsOwn(text): 查找直接包含给定文本的元素
:matches(regex): 查找哪些元素的文本匹配指定的正则表达式，比如：div:matches((?i)login)
:matchesOwn(regex): 查找自身包含文本匹配指定正则表达式的元素
注意：上述伪选择器索引是从0开始的，也就是说第一个元素索引值为0，第二个元素index为1等
可以查看Selector API参考来了解更详细的内容