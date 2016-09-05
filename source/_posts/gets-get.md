title: C语言之gets()和fgets(),puts()和fputs()
date: 2015-01-25 14:38:19
categories: C
tags:  c
description:
---
主要介绍gets(),fgets()和puts()fputs()的基本使用方法。<!--more-->
##（一）gets()和fgets()

###gets()
  gets()函数作用是从操作系统的标准输入设备获取一个`字符串`。
  gets()读取换行符之前（不包含换行符）的所有字符，在这些字符后`添加一个空字符`（`\0`）,然后把这个字符串交给调用它的程序。它读取换行符并将其舍弃。下一次读取会在新的一行开始。

  gets()函数的构造如下：
  ``` c
    char *gets(char * s)
    {
         ...
         return (s);
    }
   ```
  可以看出gets()函数返回一个指向char的指针。但是返回的是传给他的同一个指针。

  gets()可能有两个返回值，如果一切顺利，返回读入字符串的地址。如果出错或gets()遇到文件结尾，他返回一个空（或0）地址。（就是空指针NULL）。
  ```C
  	while(gets(name)!=NULL)
  ```
  ###fgets()
  gets()函数不检测目标数组是否能够容纳输入，多出来的字符简单的溢出到相邻的内存区，所以不安全。
  可以用fgets()函数代替，`fgets()函数读到换行符不会像gets()那样丢弃。而是存到字符串里。`
  使用例子：
  ``` C
  char name[MAX];
  char * ptr;
  ptr=fgets(name,MAX,stdin);
  ```
  fgets()函数有三个参数：
  第一个参数：是输入的字符串。
  第二个参数：来说明读入的最大字符数。如果那个参数为n，fgets()会读取最多`n-1`个字符或读完地一个换行符为止。
  第三个参数：来说明读哪一个文件，从键盘上读取数据，可以使用stdin（代表standard input）来做参数，在stdio.h中定义。
  ###scanf()函数
  scanf()函数如果使用`%s`格式，字符读到下一个`空白字符`（空格，制表符或换行符）。可以使用`%10s`来表示读入十个字符或遇到第一个空白字符。

  scanf()函数返回一个整数值（成功读取的项目数），或者当遇到文件结束时返回一个EOF。

  ##puts()和fputs()

  ###puts()
  puts()和gets()函数的使用类似，只是用来显示字符串。只需要给出字符串的`地址`。`puts()显示字符串时会自动添加换行符。`
  ###fputs()
  fputs()和puts()的区别：
  + fputs()需要第二个参数来说明要写的文件。可以使用stdout（表示standard output）来作为参数进行输出显示，stdout在stdio.h。
  + 和puts()不同，fputs()并不为输出自动添加换行符。

  gets()丢弃输入的换行符，但是puts()为输出添加换行符。另一方面，fgets()存储输入的换行符，而fputs()也不为输出添加换行符。
  ```c
  char line[49];
  while(fgets(line,49,stdin))
    fputs(line,stdout)
  ```