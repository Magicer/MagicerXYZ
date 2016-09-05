title: "（转）Android开发效率—Eclipse快捷键"
date: 2015-05-09 20:26:50
tags: [eclipse,android]
category: Software
---

 很多过去使用Visual Studio开发软件的网友可能不熟悉Java开发环境，今天Android开发网告诉大家一些提高Android开发效率的Eclipse快捷键，可以有效率的帮助我们管理代码和减少键盘输入。Eclipse相对于Visual Studio而言使用Java开发，响应速度和稳定性上有很大的欠缺，这些我们目前只能容忍下。<!--more-->

 ```
转载自http://www.cnblogs.com/lm3515/archive/2011/03/16/1985671.html
```

　　比较常用的Android123整理如下:

　　自动补充import Package Ctrl+Shift+O，这里O代表Organize Import的意思。

　　格式化代码缩进 Ctrl+Shift+F，这里面我们可以记忆F为Format格式化的意思。

　　快速查找代码 Ctrl+F，撤消到上一次Ctrl+Z

　　智能内容感知 Alt+/ ，该快捷键可以方便的匹配我们使用的类信息，/ 在键盘上和?是同一个按键。

　　调用运行Run As对话框可以使用Ctrl+F11，如果为Debug调试方式可以直接使用F11。

　　生成一个板块注释Alt+Shift+J ，单行注释为Ctrl+/键


用Eclipse开发，不知道快捷键可不行啊。
熟悉快捷键可以大大的提高效率：

##常用
Ctrl+M 当前窗口最大化 
Ctrl+F7 视窗口切换 
Ctrl+F8 模式切换 
Ctrl+F6 编辑窗口切换(手指张得太大不雅观啊) 
Ctrl+E 编辑窗口切换(这个比较文雅点??) 
Alt+← 前一个编辑的页面 
Alt+→ 下一个编辑的页面 
Ctrl+Alt+↓ 复制(增加)当前行到下一行 
Ctrl+Alt+↑ 复制(增加)当前行到上一行 
Alt+↓ 当前行和下面一行交互位置(用不着剪切了) 
Alt+↑ 当前行和上面一行交互位置 
Ctrl+D 删除当前行 
Alt+Enter 显示当前选择文件的属性 
Shift+Enter 在当前行插入空行(下一行) 
Shift+Ctrl+Enter 在当前行插入空行(上一行) 
Ctrl+Q 定位到最后编辑的地方 
Ctrl+L 定位在具体某行 
Ctrl+/ 注释当前行(可多行),再按则取消注释 
Ctrl+Shift+R 找文件 
Ctrl+Shift+T 找类 
Ctrl+K 选中的Word快速定位到下一个 
Ctrl+Shift+K 选中的Word快速定位到上一个 
Ctrl+Shift+U 选中后列出查询到的结果 
Ctrl+/(小键盘) 折叠当前类中的所有代码 
Ctrl+×(小键盘) 展开当前类中的所有代码 
Ctrl+Shift+P 定位到对于的匹配符(如{},()) 
CTRL+SHIFT+X 切换字符的大小写(大写) 
CTRL+SHIFT+Y 切换字符的大小写(小写) 
Ctrl+1 当某行出错时或警告时,跳出帮助 
Ctrl+Shift+F 格式排版 
Alt+Shift+R 重命名 (改量和类名时很方便) 
Alt+Shift+C 修改函数结 
Alt+Shift+M 重构方法 (选中要重构方法,再生成个新方法) 
Alt+Shift+Z 重构恢复 
Ctrl+W 关闭当前窗口 
Ctrl+Shift+F4 关闭所有打开的窗口 
Ctrl+Shift+O ： import相关类，同时若已经import的类，没有被用到，就删除。 
sysout->Ctrl+Space->System.out.println() 
Window->reference->Workbench->Keys 有兴趣的可以自定义热键


##编辑 
作用域 功能 快捷键 
全局 查找并替换 Ctrl+F 
文本编辑器 查找上一个 Ctrl+Shift+K 
文本编辑器 查找下一个 Ctrl+K 
全局 撤销 Ctrl+Z 
全局 复制 Ctrl+C 
全局 恢复上一个选择 Alt+Shift+↓ 
全局 剪切 Ctrl+X 
全局 快速修正 Ctrl1+1 
全局 内容辅助 Alt+/ 
全局 全部选中 Ctrl+A 
全局 删除 Delete 
全局 上下文信息 Alt+？ 
Alt+Shift+? 
Ctrl+Shift+Space 
Java编辑器 显示工具提示描述 F2 
Java编辑器 选择封装元素 Alt+Shift+↑ 
Java编辑器 选择上一个元素 Alt+Shift+← 
Java编辑器 选择下一个元素 Alt+Shift+→ 
文本编辑器 增量查找 Ctrl+J 
文本编辑器 增量逆向查找 Ctrl+Shift+J 
全局 粘贴 Ctrl+V 
全局 重做 Ctrl+Y

##查看 
作用域 功能 快捷键 
全局 放大 Ctrl+= 
全局 缩小 Ctrl+-

##窗口 
作用域 功能 快捷键 
全局 激活编辑器 F12 
全局 切换编辑器 Ctrl+Shift+W 
全局 上一个编辑器 Ctrl+Shift+F6 
全局 上一个视图 Ctrl+Shift+F7 
全局 上一个透视图 Ctrl+Shift+F8 
全局 下一个编辑器 Ctrl+F6 
全局 下一个视图 Ctrl+F7 
全局 下一个透视图 Ctrl+F8 
文本编辑器 显示标尺上下文菜单 Ctrl+W 
全局 显示视图菜单 Ctrl+F10 
全局 显示系统菜单 Alt+-

##导航 
作用域 功能 快捷键 
Java编辑器 打开结构 Ctrl+F3 
全局 打开类型 Ctrl+Shift+T 
全局 打开类型层次结构 F4 
全局 打开声明 F3 
全局 打开外部javadoc Shift+F2 
全局 打开资源 Ctrl+Shift+R 
全局 后退历史记录 Alt+← 
全局 前进历史记录 Alt+→ 
全局 上一个 Ctrl+, 
全局 下一个 Ctrl+. 
Java编辑器 显示大纲 Ctrl+O 
全局 在层次结构中打开类型 Ctrl+Shift+H 
全局 转至匹配的括号 Ctrl+Shift+P 
全局 转至上一个编辑位置 Ctrl+Q 
Java编辑器 转至上一个成员 Ctrl+Shift+↑ 
Java编辑器 转至下一个成员 Ctrl+Shift+↓ 
文本编辑器 转至行 Ctrl+L

##搜索 
作用域 功能 快捷键 
全局 出现在文件中 Ctrl+Shift+U 
全局 打开搜索对话框 Ctrl+H 
全局 工作区中的声明 Ctrl+G 
全局 工作区中的引用 Ctrl+Shift+G

##文本编辑 
作用域 功能 快捷键 
文本编辑器 改写切换 Insert 
文本编辑器 上滚行 Ctrl+↑ 
文本编辑器 下滚行 Ctrl+↓

##文件 
作用域 功能 快捷键 
全局 保存 Ctrl+X 
Ctrl+S 
全局 打印 Ctrl+P 
全局 关闭 Ctrl+F4 
全局 全部保存 Ctrl+Shift+S 
全局 全部关闭 Ctrl+Shift+F4 
全局 属性 Alt+Enter 
全局 新建 Ctrl+N

##项目 
作用域 功能 快捷键 
全局 全部构建 Ctrl+B

##源代码 
作用域 功能 快捷键 
Java编辑器 格式化 Ctrl+Shift+F 
Java编辑器 取消注释 Ctrl+\ 
Java编辑器 注释 Ctrl+/ 
Java编辑器 添加导入 Ctrl+Shift+M 
Java编辑器 组织导入 Ctrl+Shift+O 
Java编辑器 使用try/catch块来包围 未设置，太常用了，所以在这里列出,建议自己设置。 
也可以使用Ctrl+1自动修正。

##运行 
作用域 功能 快捷键 
全局 单步返回 F7 
全局 单步跳过 F6 
全局 单步跳入 F5 
全局 单步跳入选择 Ctrl+F5 
全局 调试上次启动 F11 
全局 继续 F8 
全局 使用过滤器单步执行 Shift+F5 
全局 添加/去除断点 Ctrl+Shift+B 
全局 显示 Ctrl+D 
全局 运行上次启动 Ctrl+F11 
全局 运行至行 Ctrl+R 
全局 执行 Ctrl+U

##重构 
作用域 功能 快捷键 
全局 撤销重构 Alt+Shift+Z 
全局 抽取方法 Alt+Shift+M 
全局 抽取局部变量 Alt+Shift+L 
全局 内联 Alt+Shift+I 
全局 移动 Alt+Shift+V 
全局 重命名 Alt+Shift+R 
全局 重做 Alt+Shift+Y
