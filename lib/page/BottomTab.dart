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
  @override
  State<StatefulWidget> createState() => TabsState();
}
/// TabsState继承State能够改变数据
class TabsState extends State {
  int index = 0;
  List list = [
    HomeTabs(),
    SettingTabs(),
    TypeTabs(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      /// app标题
      appBar: AppBar(
        title: Text('App bar'),
      ),
      /// body内容
      body: this.list[this.index],
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
    );
  }
}
