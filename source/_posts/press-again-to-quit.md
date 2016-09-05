title: "Android 中实现“再按一次退出程序”的提醒"
date: 2015-10-26 14:35:04
tags: android
category: Android
---
见很多软件都有 按一次退出程序的提醒，觉得挺人性化，便从网上找到了代码，在这里记录一下：
```
private long exitTime=0;
 @Override
public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && 
            event.getAction() == KeyEvent.ACTION_DOWN) {
            if ((System.currentTimeMillis() - exitTime) > 2000) {
                Toast.makeText(this, "再按一次退出程序", Toast.LENGTH_SHORT).show();
                exitTime = System.currentTimeMillis();
            } else {
                finish();
                System.exit(0);
            }
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

```