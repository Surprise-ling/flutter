import 'package:flutter/material.dart';
import 'package:flutter_app/page/BottomTab.dart' as Tab;
import 'package:flutter_app/page/SettingPage/SettingPage.dart';
import 'package:flutter_app/page/TypePage/TypePage.dart';

/// 定义路由列表，必须为[routes]
final routes = {
  '/': (context, { arguments }) => Tab.Tabs(),
  '/setting': (context, { arguments }) => SettingPage(arguments: arguments),
  '/type': (context, { arguments }) => TypePage(arguments: arguments),
};
/// 路由跳转事件
// ignore: strong_mode_top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  /// 跳转路由时，获取跳转 [key] 的路由名称
  final String name = settings.name;
  /// 把对应的加载页面赋值一个函数对象
  final Function pageContentBuilder = routes[name];
  print(pageContentBuilder);
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