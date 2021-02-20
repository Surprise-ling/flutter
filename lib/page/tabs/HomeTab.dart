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
              /// 通过button点击事件，使用[of]路由跳转跳转到其他页面
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    print(context);
                    return HomePage(pageContext: '这是参数111');
                  },
                )
              );
            },
            child: Text('这是HomePage页面')
        ),
        ElevatedButton(
            onPressed: () {
              /// 使用[pushNamed]命名路由跳转,并且传入参数
              Navigator.pushNamed(context, '/setting', arguments: {
                "id": 2222
              });
            },
            child: Text('这是Settings页面')
        ),
        ElevatedButton(
            onPressed: () {
              /// 命名路由跳转,并且传入参数
              Navigator.pushNamed(context, '/type', arguments: {
                "id": 3333
              });
            },
            child: Text('这是TypePage页面')
        ),
      ],
    );
  }
}