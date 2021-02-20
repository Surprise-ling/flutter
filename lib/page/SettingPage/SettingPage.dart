import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  final arguments;
  SettingPage({this.arguments});
  @override
  State<StatefulWidget> createState() => SettingPageState(arguments: this.arguments);
}
/// TabsState继承State能够改变数据
class SettingPageState extends State {
  int index = 0;
  final arguments;
  SettingPageState({this.arguments}) {
    print('${this.arguments}');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // title: Text('${this.pageContext}'),
        title: Text('${this.arguments['id']}Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                if (this.arguments['id'] == 95271) {
                  // Navigator.of(context).pushNamedAndRemoveUntil(
                  //     '/',
                  //     (route) => false,
                  // );
                  print('object');
                  /// popUntil必须保留对应的栈，才能返回到指定名称的页面
                  /// 会将之前的所有栈清除
                  Navigator.of(context).popUntil(ModalRoute.withName('/register'));
                } else {
                  /// 直接pop跳转到上一页
                  Navigator.of(context).pop();
                }
              },
              // child: Text('${this.pageContext}')
              child: Text('${this.arguments['id']}这是按钮')
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.print), label: '123213'),
      //     BottomNavigationBarItem(icon: Icon(Icons.print), label: '123213'),
      //   ],
      // ),
    );
  }
}