title: "Java static关键字及静态代码块的使用"
date: 2016-03-08 19:41:04
tags: static
category: Java
---

  在了解static之前 ，先来了解下this关键字。多少有点渊源；首先 this是什么意识呢？this指代当前的对象 用法如下：

  #this关键字
  ##this指代当前对象

  ```
  public class Cirlcle {
	final static double PI=3.14;
	double radius;
	Point point;
	public Cirlcle(){
		
	}
	public Cirlcle(double radius,Point point){
		this.radius=radius;
		this.point=point;
	}
  }
  ```

  在此程序中this指代当前对象，如果不加上this时，将无法达到预期的效果，因为形式参数radius的作用域只在方法里，当加上this时代表的是当前对象的radius，所以此时可以达到为对象的域赋值的作用。

  this只能在方法内部使用，表示对”调用方法的那个对象“的引用，如果在方法内部调用同一个类的另一个方法则不用用this，直接调用即可。只有需要明确指出对当前对象的引用时，才需要使用this关键字。

  ##this调用构造器
    还是那个程序：

    ```
    public class Cirlcle {
	final static double PI=3.14;
	double radius;
	Point point;
	public Cirlcle(double radius){	
		this(radius,null);
	}
	public Cirlcle(double radius,Point point){
		this.radius=radius;
		this.point=point;
	}
    ```
  在重载的一个参数的构造器中就调用了另一个构造器Cirlcle(double radius,Point point)，利用次构造器来在当前构造器中对域进行初始化工作。
  但是此时要注意的是，this()必须放在方法的第一行。

  this还有另外一个用法，即用在return语句上。

  ```
  public class Book {
	String name;
	double price;
	int id;
	public Book printPrice(){
		price=100.0;
		System.out.println("Book price:"+price);
		return this;	//返回对当前对象的引用
	}
	public Book printName(){
		name="Thinking in Java";
		System.out.println("Book name:"+name);
		return this;   //返回对当前对象的引用
	}
	public static void main(String[] args) {
		Book book = new Book();
		book.printName().printPrice();
		
	}
}

  ```
  在方法中由于利用return返回了对当前对象的引用，所以可以使用`.`来执行多条语句

   接下来，就要来讲解static的用法了。准备好了么？
#static关键字
static：静态；

##static域

static域是所有对象所共有的，是属于类所有，而不是特定的对象。当对其进行
我们还是用上面的程序，例如：书都是一个特定图书馆的，所以此时我们就可以定义一个static类型的域来表明所有的Book都是国家图书馆的。
此时我们就可以这样定义：

```
public class Book {
	static String library="国家图书馆"; //static域
	String name;
	double price;
	int id;
	public Book printPrice(){
		price=100.0;
		System.out.println("Book price:"+price);
		return this;
	}
	public Book printName(){
		name="Thinking in Java";
		System.out.println("Book name:"+name);
		return this;
	}
	public static void main(String[] args) {
		Book book = new Book();
		book.printName().printPrice();
		System.out.println("library:"+Book.library);
	}
}
```

当定义了static域之后我们就可以用 `类名.域` 来的到该值
static域在内存中有一块特定的内存，每个对象所公用，当在一个对象中对其进行了修改，则其他对象的词域也会被修改。
__notes__:构造器中不要有static域；

##static方法
 利用static修饰的方法就是static方法；最典型的就是main()
 static字段对于每个对象都是公用的同一块内存区域。而static方法的一个最主要的用法是在没有创建对象的情况下调用方法。
 static方法就是没有this的方法（也没有super），而且在static的内部不能调用非静态方法和非静态域；

 在上面的代码中添加
 ```
 public static void  printInfo(){
		System.out.println(name+price); //error 静态方法中不能调用非静态域
		printName();   //error 静态方法中不能调用非静态方法
	}
 ```

 ##static代码块

 代码块是用{}括起来的部分；在方法中的是一般代码块，在类中声明的一般代码块就是构造代码块。而用static修饰的代码块就是静态代码块；当然还有同步代码块，现在就不做介绍了。
 接下来我们来看个程序：

 ```
public class Book {
	
	{ 
		System.out.println("构造代码块");
	}
	static{
		System.out.println("静态代码块");
	}
	public static void main(String[] args) {
		{
			System.out.println("一般代码块");
		}
	}
}
 ```
 此程序的运行结果为：

 ```
 静态代码块
 一般代码块
 ```
我们可以看到，最先执行的是静态代码块。而不是在main()方法中的一般代码块。
静态代码块是最先执行的，以载入类就执行了。

再看下面的程序：

```
public class Book {
	
	{ 
		System.out.println("构造代码块");
	}
	static{
		System.out.println("静态代码块");
	}
	public static void main(String[] args) {
		{
			System.out.println("一般代码块");
		}
		new Book();   //添加了一行
		new Book();   //添加了一行
	}
}

```
而此时的运行结果是：

```
静态代码块
一般代码块
构造代码块
构造代码块
```
可以看到，构造代码块只有在创建对象的时候才会执行。

构造代码块跟构造器又是那个先执行的呢？
来看下面的代码：

```
public class Book {
	
	public Book(){
		System.out.println("构造器");
	}
	static{
		System.out.println("静态代码块#####");
	}
	{ 
		System.out.println("构造代码块#####");
	}
	{ 
		System.out.println("构造代码块");
	}
	static{
		System.out.println("静态代码块");
	}
	public static void main(String[] args) {
		{
			System.out.println("一般代码块");
		}
		new Book();
		new Book();
	}
}

```

运行结果是：
```
静态代码块#####
静态代码块
一般代码块
构造代码块#####
构造代码块
构造器
构造代码块#####
构造代码块
构造器

```
通过运行结果可以看到，最先执行的是静态代码块并且靠上的静态代码块先执行，然后是一般代码块,然后是构造代码块，靠上的先执行，然后才是构造器；

那么下面的顺序呢？运行结果是？

```
		new Book();
		new Book();
		{
			System.out.println("一般代码块");
		}

```

运行结果是：
```
静态代码块#####
静态代码块
构造代码块#####
构造代码块
构造器
构造代码块#####
构造代码块
构造器
一般代码块

```

显而易见了，先创建对象就先执行构造代码块构造器，然后是一般代码块，按顺序执行，谁靠上谁先执行。
