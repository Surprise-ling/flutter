import 'package:flutter/material.dart';
import 'package:flutter_app/homeContent/PaddingColumnRowExpanded.dart';
import 'homeContent/ImageClip.dart';
import 'homeContent/ContainerText.dart';
import 'homeContent/ListViewText.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('App bar'),
        ),
        body: PaddingColumnRowExpanded(),
      ),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(2, 225, 255, 1),
      ),
    );
  }
}

