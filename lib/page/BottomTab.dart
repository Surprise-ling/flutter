import 'package:flutter/material.dart';
import 'package:flutter_app/fulWidget/StateFul.dart';
import 'package:flutter_app/homeContent/PaddingColumnRowExpanded.dart';
import 'package:flutter_app/fulWidget/StateFul.dart';
import 'package:flutter_app/homeContent/ImageClip.dart';
import 'package:flutter_app/homeContent/ContainerText.dart';
import 'package:flutter_app/homeContent/ListViewText.dart';
import 'package:flutter_app/homeContent/StackPositioned.dart';
import 'package:flutter_app/homeContent/AspectRatioCard.dart' as AspectRatio;
import 'package:flutter_app/homeContent/WrapContent.dart';
import 'package:flutter_app/page/tabs/HomeTab.dart';
import 'package:flutter_app/page/tabs/SettingTab.dart';
import 'package:flutter_app/page/tabs/TypeTab.dart';

/// 定义tabs有状态组件
class Tabs extends StatefulWidget {
  int index;
  Tabs({this.index = 0});
  @override
  State<StatefulWidget> createState() => TabsState(this.index);
}
/// TabsState继承State能够改变数据
class TabsState extends State {
  int index;
  List list = [
    HomeTabs(),
    SettingTabs(),
    TypeTabs(),
  ];
  TabsState(this.index) {
    print(this.index);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      /// app标题
      appBar: this.index != 2 ? AppBar(
        title: Text('App bar'),
      ) : null,
      /// body内容
      body: tabsSearch(this.list, this.index),
      /// 底部导航栏按钮
      bottomNavigationBar: BottomNavigationBar(
        /// 底部导航栏背景颜色
        backgroundColor: Colors.white,
        /// tab选中的颜色
        fixedColor: Colors.blueAccent,
        /// 选中的下标
        currentIndex: this.index,
        /// 选中tabs触发的事件
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        /// icon的大小
        iconSize: 36,
        /// 配置底部tabs可以配置多个按钮
        type: BottomNavigationBarType.fixed,
        /// tabs的数组
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首页',
              activeIcon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '分类',
              activeIcon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '设置',
              activeIcon: Icon(Icons.search)
          ),
        ],
      ),
      /// 悬浮按钮
      floatingActionButton: Container(
        height: 76,
        width: 76,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(50)
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              this.index = 1;
            });
          },
          backgroundColor: this.index == 1 ? Colors.red : Colors.blue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  /// 自定义侧边栏头部
                  //   child: DrawerHeader(
                  //     child: Text('你好啊'),
                  //     decoration: BoxDecoration(
                  //       color: Colors.red,
                  //       image: DecorationImage(
                  //         image: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg&refer=http%3A%2F%2Fa4.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616383144&t=7ef2dc3b4e643ec809fc8adfb5c764e7"),
                  //         fit: BoxFit.cover
                  //       ),
                  //     ),
                  //     padding: EdgeInsets.all(0),
                  //   )
                  /// 模板格式的侧边栏头部
                  child: UserAccountsDrawerHeader(
                    accountName: Text('夏琳'),
                    accountEmail: Text('22222@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg&refer=http%3A%2F%2Fa4.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616383144&t=7ef2dc3b4e643ec809fc8adfb5c764e7"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F52%2F62%2F31300542679117141195629117826.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616383589&t=86777a702f19fca9302aa27d610b8dc2"),
                        fit: BoxFit.cover
                      )
                    ),
                      // margin: EdgeInsets.all(0),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.aspect_ratio),
              ),
              trailing: Text('123123'),
              title: Text('我是列表'),
            ),
            /// Divider分割线
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.aspect_ratio),
              ),
              title: Text('我是列表'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.aspect_ratio),
              ),
              title: Text('我是列表'),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右抽屉'),
      ),
    );
  }
}
Widget tabsSearch(list, index) {
  return list[index];
}
