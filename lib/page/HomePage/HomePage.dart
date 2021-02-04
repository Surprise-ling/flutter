import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  BuildContext pageContext;
  HomePage({this.pageContext});
  @override
  State<StatefulWidget> createState() => HomePageState(pageContext: this.pageContext);
}
/// TabsState继承State能够改变数据
class HomePageState extends State {
  int index = 0;
  BuildContext pageContext;
  HomePageState({this.pageContext});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.pageContext}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                /// 直接pop跳转到上一页
                Navigator.of(context).pop('123123');
              },
              child: Text('child')
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