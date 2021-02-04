import 'package:flutter/material.dart';

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
    return Text('setting');
  }
}