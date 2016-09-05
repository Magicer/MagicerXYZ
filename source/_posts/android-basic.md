title: Android初学常见的几个知识点
date: 2015-04-16 00:09:30
categories: Android
tags: [android]
description:
---
##Activity
Activity 是用户接口程序，原则上它会提供给用户一个交互式的接口功能。它是 android 应用程序的基本功能单元。Activity 本身是没有界面的。所以activity类创建了一个窗口，开发人员可以通过setContentView(View)接口把UI放到activity创建的窗口上，当activity指向全屏窗口时，也可以用其他方式实现：作为漂浮窗口（通过windowIsFloating的主题集合），或者嵌入到其他的activity（使用ActivityGroup）。activity是单独的，用于处理用户操作。几乎所有的activity都要和用户打交道<!--more-->
###(一)Activity的生命周期


<img src="/image/Android/activity_lifecycle.png">

```java
package com.example.activity1;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class MainActivity extends Activity {
 private String TAG="TAG";
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Log.d(TAG,"onCreate");
	}
	@Override
	protected void onStart() {

		super.onStart();
		Log.d(TAG,"onStart");

	}
	@Override
	protected void onResume() {

		super.onResume();
		Log.d(TAG,"onResume");
	}
	@Override
	protected void onPause() {

		super.onPause();
		Log.d(TAG,"onPause");
	}
	@Override
		protected void onRestart() {

			super.onRestart();
			Log.d(TAG,"onRestart");
		}
	@Override
	protected void onStop() {

		super.onStop();
		Log.d(TAG,"onStop");
	}
	@Override
	protected void onDestroy() {

		super.onDestroy();
		Log.d(TAG,"onDestroy");
	}
}
```
程序启动时经历：onCreate-->onStart-->onResume
按下返回键时：onPause-->onStop-->onDestroy
按下home键时：onPause-->onStop
再次调用时：onRestart-->onStart-->onResume

###打开另一个activity
在onCreate()方法中添加以下代码来设置按钮button1的监听事件。
前提是：布局文件中已经添加了id为button1的按钮。

 ```java
 Button btn =(Button) findViewById(R.id.button1);
		btn.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent itn =new Intent(MainActivity.this,activity2.class);
				//此处的activity2为第二个类的名，MainActivity为当前类的名字。
				startActivity(itn);
			}
		});
 ```


 在另外创建一个类继承自activity 和一个布局文件。
 运行为android application.点击按钮即可进入另一个activity 。
 可以在第二个activity中设置监听事件来关闭新打开的activity。（在第二个类文件的onCreate()方法中添加）代码如下：


 ```java
 Button btn2=(Button) findViewById(R.id.btn2);
		btn2.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View v) {
				finish();
			}
		});
 ```

##Notification
应用实例代码：
```java
public static final int NOTIFICATION_ID=200;
private Button btn;

@Override
protected void onCreate(Bundle savedInstanceState) {
	super.onCreate(savedInstanceState);
	setContentView(R.layout.activity_main);
     	btn=(Button) findViewById(R.id.btn_notification);
	btn.setOnClickListener(new View. OnClickListener() {
	
		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			android.support.v4.app.NotificationCompat.Builder builder=new NotificationCompat.Builder(MainActivity.this);
			builder.setSmallIcon(R.drawable.ic_launcher);
			builder.setContentTitle("通知");
			builder.setContentText("这是通知消息");
			Notification notification=builder.build();
			NotificationManager manager=(NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
			manager.notify(NOTIFICATION_ID,notification);
			}
	});
	}
```

##ListView的使用及ArrayAdapter
应用实例：
```java
	private ListView listview;
	private ArrayAdapter<String> arr_adapter;
	private SimpleAdapter simple_adapter;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		 listview=(ListView) findViewById(R.id.listView1);
		 String []arr_data={"姓名","性别","年龄"};
		 //1,新建一个适配器
		 //2,配置数据项
		 //ArrayAdapter(上下文，当前listview加载的每一个列表项所对应的布局文件,数据源)
		 arr_adapter=new ArrayAdapter<String>(this,
		 					android.R.layout.simple_list_item_1,
		 					arr_data);
		 //3,视图（ListView）加载适配器
		 listview.setAdapter(arr_adapter);	 
	}
```

##Toast的使用
 ###（一）最简单的使用案例
  ```java
  Toast.makeText( getBaseContext(),
  		    "需要显示的文字"，
  		    LENGTH_SHORT).show();
  ```
  地一个参数是上下文，第二个参数是需要显示的文字提示，第三个参数是显示的时间，最后调用show()方法显示出来。

  
  ###（二）构建自己的toast样式
  参见官方手册
  ```xml
  <LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
              android:id="@+id/toast_layout_root"
              android:orientation="horizontal"
              android:layout_width="fill_parent"
              android:layout_height="fill_parent"
              android:padding="8dp"
              android:background="#DAAA"
              >
    <ImageView android:src="@drawable/droid"
               android:layout_width="wrap_content"
               android:layout_height="wrap_content"
               android:layout_marginRight="8dp"
               />
    <TextView android:id="@+id/text"
              android:layout_width="wrap_content"
              android:layout_height="wrap_content"
              android:textColor="#FFF"
              />
</LinearLayout>
  ```

  ```java
  LayoutInflater inflater = getLayoutInflater();
View layout = inflater.inflate(R.layout.custom_toast,
                               (ViewGroup) findViewById(R.id.toast_layout_root));

TextView text = (TextView) layout.findViewById(R.id.text);
text.setText("This is a custom toast");

Toast toast = new Toast(getApplicationContext());
toast.setGravity(Gravity.CENTER_VERTICAL, 0, 0);
toast.setDuration(Toast.LENGTH_LONG);
toast.setView(layout);
toast.show();
  ```
###（三）toast的样式
  <img src=" /image/Android/toast.png" alt="toast" class="image_center" >