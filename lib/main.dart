import 'package:flutter/material.dart';
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
      home: Tabs.Tabs(),
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
    );
  }
}

