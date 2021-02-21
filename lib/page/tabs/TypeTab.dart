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
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          /// app标题
          appBar: AppBar(
            /// 可以在title里面放入顶部导航
            title: Row(
              children: [
                Expanded(
                    child: TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.white,
                      /// tab是否可以滚动
                      isScrollable: true,
                      /// 指示器颜色
                      indicatorColor: Colors.red,
                      /// 指示器长度
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(text: '热门'),
                        Tab(text: '热门1'),
                        Tab(text: '热门1'),
                        Tab(text: '热门1'),
                        Tab(text: '热门1'),
                        Tab(text: '热门1'),
                      ],
                    ),
                )
              ],
            ),
            backgroundColor: Colors.red[200],
            centerTitle: true,
            /// 标题左图标
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('object');
              },
            ),
            /// 标题右图标
            actions: [
              ButtonBar(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      print('object');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      print('object');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      print('object');
                    },
                  ),
                ],
              )
            ],
            /// 顶部导航
            // bottom: TabBar(
            //   labelColor: Colors.blue,
            //   labelStyle: TextStyle(
            //       backgroundColor: Colors.yellow
            //   ),
            //   tabs: [
            //     Tab(text: '热门'),
            //     Tab(text: '推荐')
            //   ],
            // ),
          ),
          /// body内容
          // body: this.list[this.index],
          body: TabBarView(
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tabsController');
                  },
                  child: Text('另外一种tab切换'),
                ),
              ),
              ListView( /// 对应顶部第二个tab切换
                children: [
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  )
                ],
              ),
              ListView( /// 对应顶部第一个tab切换
                children: [
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  )
                ],
              ),
              ListView( /// 对应顶部第一个tab切换
                children: [
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  )
                ],
              ),
              ListView( /// 对应顶部第一个tab切换
                children: [
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  )
                ],
              ),
              ListView( /// 对应顶部第一个tab切换
                children: [
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}