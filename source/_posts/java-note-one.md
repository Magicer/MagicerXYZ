title: "Java笔记（一）"
date: 2015-12-05 12:01:36
tags: java
category: Java
---
用于记录java的一些知识。
##StringBuffer

StringBuffer线程安全的，
StringBuilder线程不安全，在大多数实现中比StringBuffer快
```
StringBuffer sb= new StringBuffer("sb");
        sb.append("+2sb");
        System.out.println(sb);
        System.out.println(sb.length());
        
        sb.delete(2, 3);//删除第二个字符 
        System.out.println(sb);
```
