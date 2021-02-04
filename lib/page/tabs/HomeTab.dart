import 'package:flutter/material.dart';
import 'package:flutter_app/page/HomePage/HomePage.dart';

class HomeTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeTabsState();
}
/// TabsState继承State能够改变数据
class HomeTabsState extends State {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              /// 通过button点击事件，跳转到其他页面
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    print(context);
                    return HomePage(pageContext: context);
                  },
                )
              );
            },
            child: Text('跳转的其他页面')
        ),
        ElevatedButton(
            onPressed: () {

            },
            child: Text('跳转的其他页面')
        ),
      ],
    );
  }
}