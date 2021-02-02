import 'package:flutter/material.dart';

/// list矩阵列表
class ListViewText4 extends StatelessWidget {
  /// 定义grid的数量
  List<Widget> _getContainer() {
    List<Widget> list = new List();
    for (var i = 0;i <= 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset('images/b.gif',
              scale: 2.6,
              width: 400,
              height: 150,
              fit: BoxFit.cover,
            ),
            // SizedBox(height: 60),
            Text('这是第$i个商品',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 1
            ),
        ),
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    /// 动态grid网格式布局
    List list = [];
    list.addAll([
      {
      "title": "hhhqwh"
      },
      {
        "title": "hhhqweh"
      },
      {
        "title": "hhhqweh"
      }]
    );
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10, /// 每列间距
        mainAxisSpacing: 10,  /// 每行间距
      ),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset('images/b.gif',
                  scale: 2.6,
                  width: 400,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                // SizedBox(height: 60),
                Text('这是${list[index]['title']}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.blue,
                  width: 1
              ),
            ),
          );
        },
    );

    /// 静态grid网格式布局
    // return GridView.count(
    //   /// 水平（一行）的widget数量
    //   crossAxisCount: 2,
    //   /// 水平（每列）的widget间隔
    //   crossAxisSpacing: 10,
    //   /// 垂直（每行）widget的间隔
    //   mainAxisSpacing: 10,
    //   padding: EdgeInsets.all(0),
    //   /// widget宽高比
    //   childAspectRatio: 1,
    //   children: this._getContainer(),
    // );
  }
}
/// list循环数组
class ListViewText3 extends StatelessWidget {
  /// 循环数组
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0;i <= 20; i++) {
      list.add(ListTile(
        leading: Image.asset('images/b.gif'),
        title: Text('我是$i列表'),
        subtitle: Text('我是作者$i'),
      ));
    }
    return list;
  }
  /// 使用listView.builder循环数组
  _getList() {
    List list = new List();
    for (var i = 0; i <= 20; i++) {
      list.add('这是一个listView$i');
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    /// 动态循环数组
    // return ListView(
    //   children: this._getData(),
    // );
    /// 通过builder动态循环数组
    return ListView.builder(
        itemCount: this._getList().length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset('images/b.gif'),
            title: Text(this._getList()[index]),
            subtitle: Text('我是作者$index'),
          );
        });
  }
}
/// list水平列表，通过column垂直布局组件，多个组件嵌套
class ListViewText2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// list水平列表，通过column垂直布局组件，多个组件嵌套
    return Column(
      children: [
        ListViewText(),
        ListViewText(),
        ListViewText(),
        ListViewText(),
        ListViewText(),
        ListViewText(),
      ],
    );
  }
}
/// list垂直列表
class ListViewText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// list垂直列表
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('images/b.gif', fit: BoxFit.cover,),
          Container(
            child: Text('红红火火恍恍惚惚红红火火恍恍惚惚哈哈哈哈哈',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            height: 20,
          ),
          Image.asset('images/b.gif', fit: BoxFit.cover,),
          Image.asset('images/b.gif', fit: BoxFit.cover,),
          Image.asset('images/b.gif', fit: BoxFit.cover,),
          Image.asset('images/b.gif', fit: BoxFit.cover,),
        ],
      ),
    );

    /// listView列表
    // return ListView(
    //   children: [
    //    ListTile(
    //      title: Text('小黄喜欢哈哈哈哈哈哈哈',
    //      style: TextStyle(
    //        color: Colors.red,
    //        fontStyle: FontStyle.italic,
    //        fontSize: 24,
    //      )),
    //      subtitle: Text('小黄喜欢汪汪汪汪'),
    //      leading: Image.asset('images/b.gif'),
    //    ),
    //     ListTile(
    //       title: Text('小黄喜欢哈哈哈哈哈哈哈'),
    //       subtitle: Text('小黄喜欢汪汪汪汪'),
    //       leading: Icon(Icons.home, color: Colors.teal, size: 30,)
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.keyboard, color: Colors.amber, size: 30,),
    //       title: Text('小黄喜欢哈哈哈哈哈哈哈'),
    //       subtitle: Text('小黄喜欢汪汪汪汪'),
    //       trailing: Icon(Icons.keyboard, color: Colors.amber, size: 30,)
    //     ),
    //     ListTile(
    //       title: Text('小黄喜欢哈哈哈哈哈哈哈'),
    //       subtitle: Text('小黄喜欢汪汪汪汪'),
    //       trailing: Image.asset('images/a.png')
    //     ),
    //   ]
    // );
  }
}