import 'package:flutter/material.dart';
import 'package:flutter_app/page/user/RegisterFirst.dart';

class SettingTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SettingTabsState();
}
/// TabsState继承State能够改变数据
class SettingTabsState extends State {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text('跳转到登录页面'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/register');
              /// 使用settings设置跳转页面的栈名字，用于popUntil
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterFirst(),
                    settings: RouteSettings(name: '/register'),
                  ));
            },
            child: Text('跳转到注册页面')
          )
        ],
      ),
    );
  }
}