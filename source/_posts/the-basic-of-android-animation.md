title: "Android Animation基础（一）"
date: 2015-10-27 15:18:29
tags: [android,animation]
category: Android
---

##视图动画（View Animation）
 主要有AlphaAnimation ,RotateAnimation,TranslateAnimation,ScaleAnimation四种动画方式，在3.0之前广泛使用，但是由于不具有交互性（当View发生视图动画后，其响应事件的位置仍然在动画前的地方），渐渐的属性动画使用的多起来。一般试图动画制作普通的动画效果，不做交互。优点就是效率高使用方便。
###通过XML定义动画
在`anim`文件夹下创建，通过xml创建的动画可读性较好。
```
<?xml version="1.0" encoding="utf-8"?>
<set xmlns:android="http://schemas.android.com/apk/res/android"
    android:interpolator="@[package:]anim/interpolator_resource"
    android:shareInterpolator=["true" | "false"] >
    <alpha
        android:fromAlpha="float"
        android:toAlpha="float" />
    <scale
        android:fromXScale="float"
        android:toXScale="float"
        android:fromYScale="float"
        android:toYScale="float"
        android:pivotX="float"
        android:pivotY="float" />
    <translate
        android:fromXDelta="float"
        android:toXDelta="float"
        android:fromYDelta="float"
        android:toYDelta="float" />
    <rotate
        android:fromDegrees="float"
        android:toDegrees="float"
        android:pivotX="float"
        android:pivotY="float" />
    <set>
        ...
    </set>
</set>
```
下面来解释一下：
`android:interpolator` ：表示动画集合采用的插值器，插值器影响动画的速度。
`android:shareInterpolator` ：表示集合中的动画是否和集合公用同一个插值器。
`pivot`：支点，枢纽；

通过xml创建的动画怎么使用呢：
```
 Animation animation=AnimationUtils.loadAnimation(this,R.anim.viewanimation);
 view.startAnimation(animation);
```
###透明度动画AlphaAnimation 
这个应该很清楚，设置开始值，结束值即可。
```
AlphaAnimation aa=new AlphaAnimation(0,1);
aa.setDuration(1000);
View.startAnimation(aa);
/*
* public AlphaAnimation (float fromAlpha, float toAlpha)
*/
```
###位移动画 TranslateAnimation

```
TranslateAnimation ta=new TranslateAnimation(0,300,0,300);
ta.setDuration(1000);
View.startAnimation(ta);
/*
*构造方法一：
*public TranslateAnimation (float fromXDelta, float toXDelta, 
                            float fromYDelta, float toYDelta)
*/
/*
*构造方法二
*public TranslateAnimation (int fromXType, float fromXValue, 
                            int toXType, float toXValue, 
                            int fromYType, float fromYValue, 
                            int toYType, float toYValue)
*type的值是：Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF,
* Animation.RELATIVE_TO_PARENT 之一
*/
```

###缩放动画 ScaleAnimation
```
ScaleAnimation sa=new ScaleAnimation(0,1,0,1);
sa.setDuration(1000);
View.startAnimation(sa);
/*
*构造方法一
*public ScaleAnimation (float fromX, float toX, 
                        float fromY, float toY)
*/
/*
*构造方法二
*public ScaleAnimation (float fromX, float toX, 
                        float fromY, float toY, 
                        float pivotX, float pivotY)
*/
/*
*构造方法三
*public ScaleAnimation (float fromX, float toX, 
                        float fromY, float toY, 
                        int pivotXType, float pivotXValue, 
                        int pivotYType, float pivotYValue)
*type的值是：Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, 
*Animation.RELATIVE_TO_PARENT 之一
*/
```

###旋转动画 RotateAnimation
```
RotateAnimation ra=new RotateAnimation(0,360,100,100);
ra.setDuration(1000);
View.startAnimation(ra);
/*
*构造方法一
*public RotateAnimation (float fromDegrees, float toDegrees)
*/
/*
*构造方法二
*public RotateAnimation (float fromDegrees, float toDegrees, 
                        float pivotX, float pivotY)
*pivotX等于0是左边 Y=0是上边
*/
/*
*构造方法三
*public RotateAnimation (float fromDegrees, float toDegrees, 
                        int pivotXType, float pivotXValue, 
                        int pivotYType, float pivotYValue)
*type的值是：Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, 
*Animation.RELATIVE_TO_PARENT 之一
*/
```

###动画集合SetAnimation
动画集合简单只需要把需要的动画add上就OK了。
```
AnimationSet as=new AnimationSet(true);
as.setDuration(1000);

AlphaAnimation alphaAnimation=new AlphaAnimation(1,0);
alphaAnimation.setDuration(1000);
as.addAnimation(alphaAnimation);

RotateAnimation rotateAnimation=new RotateAnimation(0,360);
rotateAnimation.setDuration(1000);
as.addAnimation(rotateAnimation);

View.startAnimation(as);

```

