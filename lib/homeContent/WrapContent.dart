import 'package:flutter/material.dart';

class WrapContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      color: Colors.grey,
      child: ListView(
        children: [
          Wrap(
            /// 主轴方向上的间距
              spacing: 10,
              /// 排间的间距
              runSpacing: 10,
              /// 主轴的对齐方式
              alignment: WrapAlignment.end,
              /// 主轴的交叉轴的位置
              runAlignment: WrapAlignment.start,
              /// 主轴的方向，默认水平，设置（垂直）
              direction: Axis.vertical,
              children:[
                MyButton('build1'),
                MyButton('build2'),
                MyButton('build3'),
                MyButton('build4'),
                MyButton('build5'),
                MyButton('build6'),
                MyButton('build7'),
                MyButton('build7'),
                MyButton('build7'),
                MyButton('build7'),
                MyButton('build7'),
                MyButton('build7'),
                MyButton('build7'),
                MyButton('build7'),
                MyButton('build7'),
              ]
          ),
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: () {
        print('123123');
      },
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.orange)
      ),
      child: Text(this.text),
    );
  }
}