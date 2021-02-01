import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// 无状态组件
class MyApp extends StatelessWidget {
  // 实现继承的抽象类方法
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        '你好Flutter22222 \n 你居然换行了',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
