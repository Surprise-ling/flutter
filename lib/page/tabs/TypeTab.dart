import 'package:flutter/material.dart';

class TypeTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TypeTabsState();
}
/// TabsState继承State能够改变数据
class TypeTabsState extends State {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('type');
  }
}