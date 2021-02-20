import 'package:flutter/material.dart';

class RegisterFirst extends StatefulWidget {
  final Map arguments;
  RegisterFirst({this.arguments});
  @override
  State<StatefulWidget> createState() => Register(arguments: this.arguments);
}

class Register extends State {
  final Map arguments;
  Register({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册1'),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            /// 替换路由，替换当前页面的路由，继承当前页面的返回操作
            // Navigator.of(context).pushReplacementNamed('/registerTwo');
            Navigator.pushNamed(context, '/registerTwo');
          },
          child: Text('跳转到注册详情页'),
        ),
      )
    );
  }
}