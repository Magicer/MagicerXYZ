title: "Android 中 ListView 的使用"
date: 2015-10-25 14:45:03
tags: [android,listview]
category: Android 
---

ListView是android应用开发中使用频率非常高的一个系统组件，几乎所有的应用中都要用到，尽管现在RecycleView有想要替代ListView的意味，但ListView仍然很重要。所以ListView值得我们深入的研究。下面就记录下ListView的使用。

##ViewHolder
使用ViewHolder模式能够提高ListView的效率.基本的使用方法如下：
```
public class ViewHolderAdapter extends BaseAdapter {
    private List<String> mData;
    private LayoutInflater mInflater;
    public ViewHolderAdapter(Context context,List<String> data ){
        this.mData=data;
        mInflater=LayoutInflater.from(context);
    }
    @Override
    public int getCount() {
        return mData.size();
    }

    @Override
    public Object getItem(int position) {
        return mData.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder=null;
        //判断是否缓存
        if (convertView==null){
            holder=new ViewHolder();
            //实例化布局
            convertView=mInflater.inflate(R.layout.listitem,null);
            holder.img=(ImageView)convertView.findViewById(R.id.imageView);
            holder.title=(TextView)convertView.findViewById(R.id.textView);

            convertView.setTag(holder);
        }else {
            //通过Tag找到缓存的布局
            holder=(ViewHolder)convertView.getTag();
        }
        holder.img.setBackgroundResource(R.mipmap.ic_launcher);
        holder.title.setText(mData.get(position));

        return convertView;
    }

    //自定义的ViewHolder类
      final class ViewHolder{
        public ImageView img;
        public TextView title;
    }
}

```
##ListView样式
divider:分割线颜色，
diverHeight:分割线宽度，
scrollbars=none:去掉滑动条，
listSelector：取消点击效果 （transparent：透明的）
```
  <ListView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:id="@+id/listView"
        android:divider="@android:color/darker_gray"
        android:dividerHeight="1dp"
        android:scrollbars="none" 
        android:listSelector="@android:color/transparent"/>
  <ImageView
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:id="@+id/empty_listview"
        android:src="@mipmap/ic_launcher"/>
```

通常可以添加一个默认的图片，在ListView Item 为空的时候显示，
```
mListView= (ListView) findViewById(R.id.listView);
mListView.setEmptyView(findViewById(R.id.empty_listview));
```
##ListView动态修改

```
mData.add("iMac");
mAdapter.notifyDataSetChanged();
```
