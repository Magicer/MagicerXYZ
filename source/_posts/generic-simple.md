title: "泛型的简单使用"
date: 2015-08-01 19:55:15
tags: java
category: Java
---
java泛型的简单使用。
泛型的定义：泛型是JDK 1.5的一项新特性，它的本质是参数化类型（Parameterized Type）的应用，也就是说所操作的数据类型被指定为一个参数，在用到的时候在指定具体的类型。这种参数类型可以用在类、接口和方法的创建中，分别称为泛型类、泛型接口和泛型方法<!--more-->

##java泛型的基本使用

加上了通配符”？“。

```java
//泛型
class Message <T>{
    private T info;
    public void setInfo(T info){
        this.info=info;
    }
    public T getInfo(){
        return info;
    }
}
public class TestDemo{
    public static void main(String[] args) {
        Message<String> msg=new Message<String>();
        msg.setInfo("Hello World!!!!");
        print(msg);
    }
    public static void print(Message<?> temp){
        /*当泛型作为参数的时候，因为不知道要传递的是什么类型的之，所以方法在编写的时候具有局限性
        可以加上通配符”？“，来让参数通用，不管是什么类型的参数都可以作为参数传递了*/
        System.out.println(temp.getInfo());
    }
}
```

本程序注释仅为个人观点，如有不符，还望指正。

