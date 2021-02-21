import 'package:flutter/material.dart';

class TabsController extends StatefulWidget {
  final Map arguments;
  TabsController({this.arguments});
  @override
  State<StatefulWidget> createState() => Register(arguments: this.arguments);
}

/// 使用mixin混入TabController
class Register extends State with SingleTickerProviderStateMixin {
  final Map arguments;
  Register({this.arguments});

  /// 配置顶部tab的Controller
  TabController _tabController;
  @override
  /// 会自动加载初始化函数，然后进行手动配置（生命周期函数）
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 4
    );
    /// 监听顶部tab的切换，实现数据的变化
    _tabController.addListener(() {
      print(_tabController.index);
      /// 变化数据
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('另一种顶部tab，有利于数据渲染',
              style: TextStyle(
                fontSize: 18
              )
          ),
          bottom: TabBar(
            /// 通过tabController实现顶部切换
            controller: this._tabController,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: '热门'),
              Tab(text: '推荐'),
              Tab(text: '详情'),
              Tab(text: '关注'),
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: [
            Center(
              child: Column(
                children: [
                  /// 在外层包裹container，设置button的高度宽度
                  /// 可以通过Expanded实现宽度自适应按钮
                  Container(
                    height: 100,
                    width: 200,
                    child: ElevatedButton(onPressed: () => false, child: Text('突起按钮')),
                  ),
                  ElevatedButton(onPressed: () => false, child: Text('突起按钮'),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.yellow),
                      /// button阴影大小
                      elevation: MaterialStateProperty.all(10),
                      /// 点击时的高亮色
                      overlayColor: MaterialStateProperty.all(Colors.yellow),
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.search, color: Colors.yellow,),
                    label: Text('qweqwewq',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        textBaseline: TextBaseline.ideographic
                      ),
                        ),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red),
                      /// button阴影大小
                      elevation: MaterialStateProperty.all(10),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                            fontWeight: FontWeight.w800,
                            textBaseline: TextBaseline.ideographic,
                            height: 1
                        )
                      ),
                    ),
                    onPressed: () => false,
                  ),
                  ElevatedButton(onPressed: () => print('点击了圆形按钮'), child: Text('突起按钮'),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(
                                color: Colors.red
                            )
                        ),
                        shape: MaterialStateProperty.all(
                          /// 圆形按钮
                            CircleBorder(
                              side: BorderSide(
                                color: Colors.red
                              )
                            )
                        )
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () => false,
                      child: Text('线框按钮'),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            /// 圆角按钮
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)
                              )
                          )
                      ),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(onPressed: () => false, child: Text('字体按钮')),
                      TextButton(onPressed: () => false, child: Text('字体按钮')),
                      TextButton(onPressed: () => false, child: Text('字体按钮')),
                    ],
                  )
                ],
              )
            ),
            Center(
              child: Text('qweqwe'),
            ),
            Center(
              child: Text('哈哈哈哈33333'),
            ),
            Center(
              child: Text('哈哈哈哈44444'),
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 44,),
        onPressed: () {},
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}