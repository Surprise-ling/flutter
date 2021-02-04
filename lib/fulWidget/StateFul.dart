import 'package:flutter/material.dart';

/// 有状态组件
class StateFul extends StatefulWidget {
  @override
  /// 实现抽象类中的抽象方法[createState]
  /// 调用继承于[State]的自定义类
  State<StatefulWidget> createState() => StateFulPage();
}

class StateFulPage extends State {
  int countNum = 0;
  var list = [];
  @override
  Widget build(BuildContext context) {
    /// 改变组类的状态数据
    // return Row(
    //   children: [
    //     Chip(
    //       label: Text('${this.countNum}'
    //       ),
    //     ),
    //     ElevatedButton(onPressed: () {
    //       /// 有状态组件独有的改变事件的方法
    //       setState(() {
    //         this.countNum++;
    //       });
    //     }, child: Text('点击事件'))
    //   ],
    // );

    /// 动态改变ListView的长度
    return ListView(
      children: [
        Column(
          children: this.list.map((e) {
            return ListTile(
              title: Text('$e'),
            );
          }).toList()
        ),
        SizedBox(height: 30,),
        ElevatedButton(
          onPressed: () {
            /// 必须设置该方法
            setState(() {
              this.list.add('123123');
            });
          },
          child: Text('按钮'),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(0))
          ),
        )
      ],
    );
  }
}