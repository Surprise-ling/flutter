import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String pageContext;
  HomePage({this.pageContext});
  @override
  State<StatefulWidget> createState() => HomePageState(pageContext: this.pageContext);
}
/// TabsState继承State能够改变数据
class HomePageState extends State {
  int index = 0;
  String pageContext;
  /// 定义表单文本的控制器(可以预设内容，获取表单内容，监听文字输入变化与焦点变化)
  var username = TextEditingController();
  bool flag = true;
  num sex = 1;
  bool flag1 = true;

  HomePageState({this.pageContext}) {
    print('${this.pageContext}');
  }

  /// 初始化生命周期给表单赋值
  @override
  void initState() {
    super.initState();
    username.text = '这是密码';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: TextField(),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  /// 直接pop跳转到上一页
                  Navigator.of(context).pop();
                },
                child: Text('${this.pageContext}')
            ),
            /// 表单
            TextField(
              /// 多行文本框
              // maxLines: 4,
              /// 密码框显示
              // obscureText: true,
              /// input相关描述
              decoration: InputDecoration(
                /// 文本框提示语
                hintText: '请输入内容',
                border: OutlineInputBorder(),
                /// 文本的label
                labelText: '用户名 or 密码',
                labelStyle: TextStyle(
                  color: Colors.red
                ),
                /// 文本框前的icon
                icon: Icon(Icons.supervised_user_circle)
              ),
              /// 通过container控制器，定义表单初始值
              controller: username,
              /// 表单变化的值，将赋值给onChanged
              onChanged: (v) {
                username.text = v;
              },
            ),
            Container(
              width: 1000,
              child: ElevatedButton(
                  onPressed: () {
                    print(username.text);
                  },
                  child: Text('点击变化表单的值')
              ),
            ),
            /// 多选框
            Checkbox(value: flag, onChanged: (v) {
              setState(() {
                flag = v;
              });
            },
              activeColor: Colors.red,
            ),
            Divider(),
            /// 多选框组
            CheckboxListTile(value: flag, onChanged: (v) {
              setState(() {
                flag = v;
                });
              },
              title: Text('这是标题'),
              subtitle: Text('这是二级标题'),
              secondary: Icon(Icons.help),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('女'),
                Radio(
                    value: 1,
                    /// radio组，必须绑定一样的参数才是一个组
                    groupValue: this.sex,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                        print(v);
                      });
                    }),
                Text('男'),
                Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                    print(v);
                  });
                }),
              ],
            ),
            Expanded(
              flex: 1,
              child:RadioListTile(
                value: 3,
                groupValue: this.sex,
                onChanged: (num value) {
                  setState(() {
                    this.sex = value;
                    print(value);
                  });
                },
                title: Text('标题'),
                subtitle: Text('二级标题'),
                secondary: Icon(Icons.help),
                selected: sex == 3,
              ),
            ),
            Expanded(
              flex: 2,
              child:RadioListTile(
                value: 4,
                groupValue: this.sex,
                onChanged: (num value) {
                  setState(() {
                    this.sex = value;
                    print(value);
                  });
                },
                secondary: CircleAvatar(
                  child: Text('123'),
                  backgroundImage: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg&refer=http%3A%2F%2Fa4.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616383144&t=7ef2dc3b4e643ec809fc8adfb5c764e7"),
                ),
                selected: sex == 4,
              ),
            ),
            Switch(value: flag1, onChanged: (v) {
              setState(() {
                flag1 = v;
              });
            })
          ],
        ),
      )
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.print), label: '123213'),
      //     BottomNavigationBarItem(icon: Icon(Icons.print), label: '123213'),
      //   ],
      // ),
    );
  }
}