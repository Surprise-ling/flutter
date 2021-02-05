import 'package:flutter/material.dart';

class TypePage extends StatefulWidget {
  final arguments;
  TypePage({this.arguments});
  @override
  State<StatefulWidget> createState() => TypePageState(arguments: this.arguments);
}
/// TabsState继承State能够改变数据
class TypePageState extends State {
  int index = 0;
  final arguments;
  TypePageState({this.arguments}) {
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
                /// 直接pop跳转到上一页
                Navigator.of(context).pop();
              },
              // child: Text('${this.pageContext}')
              child: Text('${this.arguments['id']}这是按钮')
          )
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