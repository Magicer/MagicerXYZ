title: C语言之 typedef和define的使用
date: 2015-01-18 10:54:43
categories:  C
tags:  c
description: 
---

c语言中typedef和define的使用
<!--more-->

##typedef和define的使用

##（一）typedef的使用
  typedef，使你能够为某一个类型创建自己的别名。例如：  
  ```C
  	typedef unsigned char BYTE;
  ```
  随后你就可以使用
  ```c
  	BYTE x,y[10],*z;
```  
  ###1、结合指针的用法  
  ```c
  tyoedef char *STRING;
  STRING name,sign;
  ```
  意思是
  ```c
  char * name,*sign;
  ```
  ###2、使用指针时和define的区别
  ```c
  #define STRING char *
  STRING name,sign;
  ```
  被解释为
  ```c
  char *name,sign;
  ```
  第二个`sign`没有被设置为字符指针。
  ###3、typedef和结构
  例：
  ```c
 typedef struct complex{
  	float real;
  	float imag;
} COMPLEXL;
```
  这样就可以用`COMPLEX`代替`struct complex`来表示复数了。
  ##（二）define的使用
  ###1、define的通常用法
    #define name stuff
  每当有符号那么出现时在这条指令后面时，预处理器就会把它替换成stuff。

  ###2、使用`#define`可能出现副作用
   `#define`机制包括了一个规定，允许把参数替换到文本中。
  例如：
    #define SQUARE(x)       x*x
  如果在定义了之后使用```SQUARE（5）```结果是25;
  但是如果使用

	a=5;
	printf("%d\n",SQUARE(a+1));
  结果会是什么样呢？？
也许你会说是`36`,可是真的是么？？？让我们分析一下。
define语句后出现`SQUARE(x)`的地方会被替换为`x*x`
在这个例子中a+1相当与x。所以此时愿意应为

	printf("%d\n",a+1*a+1);
现在你感觉结果是多少呢？没错，是11.
当然解决这个问题也很简单，加上括号不就解决了么。

	#define SQUARE(x)   (x)*(x)
而如果是
	#define DOUBLE(x)  (x)+(x)
则需要写成
	#define DOUBLE(x)   ((x)+(x))
道理一样。

