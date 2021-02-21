import 'package:flutter/material.dart';
import 'package:flutter_app/page/BottomTab.dart' as Tab;
import 'package:flutter_app/page/SettingPage/SettingPage.dart';
import 'package:flutter_app/page/TypePage/TypePage.dart';
import 'package:flutter_app/page/user/Login.dart';
import 'package:flutter_app/page/user/RegisterFirst.dart';
import 'package:flutter_app/page/user/RegisterSecond.dart';
import 'package:flutter_app/page/user/tabsController.dart';

/// 定义路由列表，必须为[routes]
final routes = {
  '/': (context) => Tab.Tabs(),
  '/setting': (context, { arguments }) => SettingPage(arguments: arguments),
  '/type': (context, { arguments }) => TypePage(arguments: arguments),
  '/login': (context, { arguments }) => Login(arguments: arguments),
  '/register': (context, { arguments }) => RegisterFirst(arguments: arguments),
  '/registerTwo': (context, { arguments }) => RegisterSecond(arguments: arguments),
  '/tabsController': (context, { arguments }) => TabsController(arguments: arguments),
};
/// 路由跳转事件
Function onGenerateRoute = (RouteSettings settings) {
  /// 跳转路由时，获取跳转 [key] 的路由名称
  final String name = settings.name;
  /// 把对应的加载页面赋值一个函数对象
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    /// 判断是否传参
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};