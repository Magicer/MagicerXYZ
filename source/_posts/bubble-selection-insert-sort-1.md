title: "Java插入排序，选择排序和冒泡排序的简单使用"
date: 2016-03-14 19:18:41
tags: sort
category: Java
---

排序算法可以分为内部排序和外部排序，内部排序是数据记录在内存中的进行排序，而外部排序是因排序的数据很大，一次不能容纳全部的排序记录，在排序过程中需要访问外存。
##冒泡排序
经过一次次的交换，最小的数慢慢的交换到数组开头，像冒泡泡。

专业描述：
 前提条件：序列S={S0,S1,S2....Sn-1}是n个可排序元素的系列
 1、令j从n-1递增到j，重复 2--4
 2、令i从1递增到j，重复 3
 3、如果元素Si-1个Si成反序 交换他们
 4、结束标记，序列{S0.........Sj}被排序，且Sj最大	

算法步骤：
1、比较相邻的元素，如果第一个大，就交换他们。
2、对每一个相邻的元素都比较并交换，从开始到最后一对，每次都可以保证最后的那个元素是最大的。
3、针对所有的元素，重复执行，除了最后一个（因为最后一个已经是最大的）。
4、每次重复上面的步骤，知道没有任何一对数字需要比较
```Java
public class BubbleSort {
	public static void bubbleSort(int[]arr){
		int temp;
		for(int i=0;i<arr.length-1;i++){  //控制循环次数，最多length-1次
			for(int j=0;j<arr.length-1-i;j++){   
				if(arr[j]>arr[j+1]){  //交换，大的值交换到后面
					temp=arr[j];
					arr[j]=arr[j+1];
					arr[j+1]=temp;
				}
			}
			
			//打印出每次排序的数组；
			for(int num:arr){
				System.out.print(num+"  ");
			}
			System.out.println();
		}
	}
	
	public static void main(String[] args) {
		int[] arrays={12,14,65,21,23,3,45,4};
		bubbleSort(arrays);
	}
}

```
伪代码如下：
```
	for i <---1 to length[A]
		do for j <---length[A] down to i+1
			do if A[j] < A[j-1]
			then exchange A[j] <--> A[j-1]
```

在网上找了个图示，如下：
<img src="/image/sort/bubble.gif" alt="Bubble Sort">


##插入排序
插入排序的一个典型例子就是扑克牌，联想一下扑克牌我们就可以很好的理解插入排序是如何工作的。
算法步骤：
1、将待排序序列第一个元素看做一个有序序列，把第二个元素到最后一个元素当作是未排序序列。
2、从头到尾依次扫描未排序序列，将扫描到的每个元素插入有序序列的适当位置。（如果待插入的元素和有序序列中的某个元素相等，则将带插入元素插入到相等元素的后面）
<img src="/image/sort/insert.gif" alt="Insert Short">

```
	for j <-- 2 to length[A]
		do key <-- A[j]
		##insert A[j] into the sorted sequence A[1......j-1]
		i <--j-1
		while i >=0 and A[i] > key
			do A[i+1] <-- A[i]
			i <-- i
		A[i+1] <-- key	


```

代码：

```java
	public static void insert(int[] array){
		int i,j;int insertNode;
		for(i=1;i<array.length;i++){
			insertNode = array[i];
			j = i+1;
			while(j>=0&&insertNode < array[j]){
				array[j+1] = array[j];
				j--
	}
		}
	} 
```

##选择排序
<img src="/image/sort/selection.gif" alt="Selection Sort">

基本思想：直接选择排序的基本思想是：第i趟排序开始时，当前有序区和无序区分别为R[1····i-1]和R[i····n]（1<=i<=n）该趟排序则是从当前无序区选出关键字最小的记录 R[k] 将它与无序区的第一个记录R[i]交换，使R[1····i]和R[i+1···n]分别变为新的有序区和新的无序区。因为每趟排序均使有序区中增加了一个记录，且有序区中的记录关键字均不大于无序区中记录的关键字，即第i趟排序之后 R[1···i].keys<=R[i+1···n].keys 所以进行n-1趟排序之后有R[1·····n-1].key,即经过n-1趟排序之后，整个文件R[1····n]递增有序。注意：第1趟排序开始时，无序区为R[1·····n]。

```
public static void choose(int[] array){
	for(int i=0;i<a.length;i++){
		int tmp = a[i];
		int index = i;
		for(int j=i+1;j<a.length;j++){  
			if(tmp>array[j]){     //比较值，取出值小的下标
				tmp = array[j];
				index = j;
			}
		}
		if(i!=index){   //交换两个的值，当前最小值的坐标等于当前坐标时。
			int k = array[i];
			array[i] = array[index];
			array[index] = k;
		}
	}
}

```