import 'package:flutter/material.dart';

/// 设置home的body内容(container，text)
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          /// 控件padding
          padding: EdgeInsets.all(20),
          /// 上右下左的padding
          // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          /// 子控件
          child: Text('这是一个',
            /// 文字位置
            // textAlign: TextAlign.left,
            /// 文字样式
            style: TextStyle(
                color: Color.fromRGBO(2, 22, 222, 0.9),
                fontWeight: FontWeight.w700,
                letterSpacing: 3,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.double
            ),
            /// 缩放大小
            textScaleFactor: 1,
            /// 文字超出处理方式
            // overflow: TextOverflow.ellipsis,
            /// 文字最大行数
            maxLines: 3,

          ),
          /// container控件的高宽
          height: 300,
          width: 300,
          /// container控件的描述
          decoration: BoxDecoration(
            // 边框
              border: Border.all(
                color: Colors.deepOrange,
                width: 3,
                style: BorderStyle.solid,
              ),
              /// 边框圆角
              // borderRadius: BorderRadius.all(Radius.circular(150)),
              borderRadius: BorderRadius.circular(150),
              /// 在控件中插入图片
              image: DecorationImage(
                /// 远程地址的图片
                  image: NetworkImage(
                    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=125666714,702516135&fm=26&gp=0.jpg",
                  ),
                  fit: BoxFit.cover,
              )
          ),
          /// 控件的变换
          transform: Matrix4.diagonal3Values(1, 1, 1),
          /// 设置控件对齐方式
          alignment: Alignment.center,
        )
    );
  }
}