import 'package:flutter/material.dart';

/// 设置home的body内容(远程image，本地image, 圆形图片，裁剪圆角图片)
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        /// 子控件引入远程图片地址
        //   child: Image.network("https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3923083989,1885034519&fm=26&gp=0.jpg",
        //     /// 设置图片位置
        //     alignment: Alignment.bottomCenter,
        //     // color: Colors.blue,
        //     // colorBlendMode: BlendMode.luminosity,
        //     /// 设置图片的属性，以何种方式展现在控件中
        //     // fit: BoxFit.fitHeight,
        //     /// 图片平铺效果，横向或纵向平铺
        //     repeat: ImageRepeat.repeatX,
        //   ),
        /// 引入本地图片
        child: Image.asset('images/2.0x/b.gif',
        fit: BoxFit.cover,),
        height: 500,
        /// 当child为正方形时，裁剪图形为圆形，child为矩形时，裁剪图形为椭圆形
        // child: ClipOval(
        //   child: Image.network("https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3923083989,1885034519&fm=26&gp=0.jpg",
        //     height: 100,
        //     width: 100,
        //     fit: BoxFit.cover,
        //     // color: Color.fromRGBO(2, 2, 2, 0.1),
        //     colorBlendMode: BlendMode.difference,
        //   ),
        // ),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.red
            )
        ),
      ),
    );
  }
}