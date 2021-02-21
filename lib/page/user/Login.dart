import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/component/customDialog.dart';

class Login extends StatefulWidget {
  final Map arguments;
  Login({this.arguments});
  @override
  State<StatefulWidget> createState() => LoginQ(arguments: this.arguments);
}

class LoginQ extends State {
  final Map arguments;
  List<Map> images = [
    {
      "url": "https://via.placeholder.com/350x150"
    },
    {
      "url": "https://via.placeholder.com/350x150"
    },
    {
      "url": "https://via.placeholder.com/350x150"
    },
  ];

  LoginQ({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Column(
        children: [
          Container(
            child: AspectRatio(
              aspectRatio: 16/9,
              /// 第三方轮播图
              child: new Swiper(
                itemBuilder: (BuildContext context,int index){
                  return new Image.network(this.images[index]["url"],fit: BoxFit.fill,);
                },
                itemCount: this.images.length,
                itemWidth: 300,
                /// 底部分页
                pagination: new SwiperPagination(),
                /// 左右箭头
                control: new SwiperControl(),
                autoplay: true,
                layout: SwiperLayout.STACK,
              ),
            ),
          ),
          ElevatedButton(
            /// 弹出dialog，可以选择拥内内、取消、确认等按钮
              onPressed: _alertDialog,
              child: Text('alertDialog')
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            /// 弹出dialog，内容从上到下排列，作用于选择框
              onPressed: _simpleDialog,
              child: Text('simpleDialog')
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            /// 从底部弹出模态框，内容自定义
              onPressed: _modalBottomSheet,
              child: Text('showModalBottomSheet')
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            /// toast提示
              onPressed: _toast,
              child: Text('toast')
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            /// toast提示
              onPressed: _myDialog,
              child: Text('自定义dialog')
          ),
          SizedBox(height: 10,),
        ],
      )
    );
  }
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          /// 会暂满整个屏幕
          /// alertDialog
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定要删除'),
            /// dialog中的button
            actions: [
              ElevatedButton(onPressed: () {
                Navigator.pop(context, '取消');
              }, child: Text('取消')),
              ElevatedButton(onPressed: () {
                Navigator.pop(context, '确定');
              }, child: Text('确定')),
            ],
            backgroundColor: Colors.red,
            titleTextStyle: TextStyle(
              color: Colors.white
            )
          );
        }
    );
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          /// 会暂满整个屏幕
          /// SimpleDialog
          return SimpleDialog(
              title: Text('提示信息'),
              children: [
                Container(
                  child: Text('child'),
                ),
                SimpleDialogOption(
                  onPressed: () {

                  },
                  child: Text('选项a'),
                ),
                SimpleDialogOption(
                  onPressed: () {

                  },
                  child: Text('选项b'),
                ),
                SimpleDialogOption(
                  onPressed: () {

                  },
                  child: Text('选项c'),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context, '确定');
                  },
                  child: Text('确定'),
                )
              ],
              backgroundColor: Colors.red,
              titleTextStyle: TextStyle(
                  color: Colors.white
              )
          );
        }
    );
    print(result);
  }

  _modalBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          /// 会暂满整个屏幕
          return Container(
            height: 300,
            child: Column(
              children: [
                ListTile(
                  title: Text('风向A'),
                  onTap: () {
                    Navigator.pop(context, '确定');
                  },
                ),
                ListTile(
                  title: Text('风向A'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('风向A'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('风向A'),
                  onTap: () {},
                ),
              ],
            ),
          );
        }
    );
    print(result);
  }

  _toast() {
    // Fluttertoast.showToast(
    //     msg: "This is Center Short Toast",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );
  }

  /// 使用自定义dialog
  _myDialog() {
    showDialog(
      context: context,
      builder: (context) {
        /// 使用自定义dialog
        return CustomDialog('这是标题', '这是内容');
      }
    );
  }
}