import 'package:flutter/material.dart';
import 'homeContent/ImageClip.dart';
import 'homeContent/ContainerText.dart';
import 'homeContent/ListView.dart';

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
        body: ListView(),
      ),
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
      ),
    );
  }
}

