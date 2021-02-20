import 'package:flutter/material.dart';
import 'package:flutter_app/page/BottomTab.dart' as Tab;

class RegisterSecond extends StatefulWidget {
  final Map arguments;
  RegisterSecond({this.arguments});
  @override
  State<StatefulWidget> createState() => Register(arguments: this.arguments);
}

class Register extends State {
  final Map arguments;
  Register({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('注册2'),
      ),
        body: Container(
          child: ElevatedButton(
            onPressed: () {
              /// 替换路由，替换当前页面的路由，继承当前页面的返回操作
              // Navigator.of(context).pushReplacementNamed('/registerTwo');
              /// 返回到指定路由，使用路由跳转
              // Navigator.of(context).pushAndRemoveUntil(
              //   MaterialPageRoute(builder: (context) => new Tab.Tabs(index: 1)),
              //   (route) => false);
              /// 返回到指定命名路由，并清除所有页面栈
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/setting',
                  /// 需要保留页面的栈
                  ModalRoute.withName('/register'),
                  /// 为true保留所有的栈
                  // (route) => false,
                  arguments: {"id": 95271}
              );
            },
            /// 完成后应跳转到根路由
            /// 可以使用替换路由，在每个上级页面使用，使用pop()返回上一页则返回到跟路由
            /// 可以使用
            child: Text('完成'),
          ),
        )
    );
  }
}