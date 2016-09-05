title: "java初学常用代码知识"
date: 2015-08-01 20:34:31
tags:  java
category: Java
---


##File类

File类的构造方法

```java
public File(String pathname);
public File(File parent,String child); 
```

使用File操作文件
```java
public boolean creatNewFile() throws IOExcetion //创建文件
public boolean delete()                         //删除文件
public boolean exists()                         //判断给定的路径是否存在
public static final String separator            //  “/” 注意：常量，但是未大写
public File getParentFile()                     //找到一个指定路径的父路径
public boolean mkdirs()                         //创建制定目录
/*其他方法*/
public String getName()         //取得文件的名字
public boolean isDirectory()    //判断给定的路径是否是文件夹
public boolean isFile()         //判断给定的路径是否是文件
public boolean isHidden()       //判断是否隐藏
public long lastModified()      //文件最后一次修改日期
public long length()            //取得文件大小，以字节为单位返回
public boolean renameTo(File dest)  //为文件重命名
public File[] listFiles()   //将目录中所有的文件以File对象数组的方式返回
```

简单示例：

```java
/*  判断制定文件是否存在，若存在则删除，不存在则创建*/
public static void main(String[] args) {
        File file = new File(File.separator + "home" + File.separator
                + "magicer" + File.separator + "code" + File.separator
                + "Demo.txt");
        if (file.exists()) {
            file.delete();
        } else {
            try {
                file.createNewFile();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
```

