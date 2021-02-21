import 'package:flutter/material.dart';

class AspectRatioCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black
        )
      ),
      /// aspectRatio 调整子元素，根据父元素设置宽高比(在平铺方面使用),设置组件宽高比
      child: AspectRatio(
        aspectRatio: 2.0/12.0,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
class AspectRatioCard1 extends StatelessWidget {
  List list = [1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this.list.map((e) {
        /// 卡片组件
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.asset('images/b.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.asset('images/b.gif'),
                ),
                title: Text('名字$e：',
                  style: TextStyle(
                      fontSize: 24
                  ),
                ),
                subtitle: Text('123213213231231232132131232131233123213213123211111111111111111',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                /// CircleAvatar原型头像组件
                trailing: CircleAvatar(
                  /// 背景图片是本地图片加载
                  backgroundImage: AssetImage('images/b.gif'),
                ),
              ),
            ],
          ),
        );
      }).toList()
    );
  }
}