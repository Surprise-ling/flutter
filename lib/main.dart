import 'package:flutter/material.dart';

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
        body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
      ),
    );
  }
}
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        child: Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=125666714,702516135&fm=26&gp=0.jpg"),
        height: 300,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red
            )
          )
        ),
      );
  }
}
/// 设置home的body内容(container，text)
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text('这是一个',
        // textAlign: TextAlign.left,
        style: TextStyle(
          color: Color.fromRGBO(2, 22, 222, 0.9),
          fontWeight: FontWeight.w700,
          letterSpacing: 3,
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.blue,
          decorationStyle: TextDecorationStyle.double
        ),
          textScaleFactor: 1,
          // overflow: TextOverflow.ellipsis,
          maxLines: 3,

        ),
        // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        height: 1000,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepOrange,
            width: 3,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(5)),
        ),
        transform: Matrix4.diagonal3Values(1.3, 1, 1),
        alignment: Alignment.centerRight,
      )
    );
  }
}