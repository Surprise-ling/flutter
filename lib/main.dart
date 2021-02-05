import 'package:flutter/material.dart';
import 'package:flutter_app/routes/Routes.dart';
import 'page/BottomTab.dart' as Tabs;

void main(List<String> args) {
  runApp(MyApp());
}

// 无状态组件
class MyApp extends StatelessWidget {

  // 实现继承的抽象类方法
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      /// 主题样式
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle()
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.yellow)
              )
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle()
          )
      ),
      /// 使用命名路由初始化进入界面
      // home: Tabs.Tabs(),
      /// 初始化加载的路由
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute
    );
  }
}

