import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaddingColumnRowExpanded extends StatelessWidget {
  List list = [];
  _getGridBuilder() {
    GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset('images/b.gif',
                  scale: 2.6,
                  width: 400,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                // SizedBox(height: 60),
                Text('这是${list[index]['title']}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.blue,
                  width: 1
              ),
            ),
          );
      },
    );
  }
  _getGridCount(List list) {
    List <Widget>arr = [];
    arr.addAll(
        list.map<Widget>((e){
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
              )
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset('images/b.gif',
                  fit: BoxFit.cover,
                ),
                Text('data'),
              ],
            )
          );
        })
    );
    return Padding(
      padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        children: arr,
      ),
    );
  }
  _getRow() {

  }
  @override
  Widget build(BuildContext context) {
    list.addAll([
      {
        "title": "hhhqwh"
      },
      {
        "title": "hhhqweh"
      },
      {
        "title": "hhhqweh"
      },
      {
        "title": "hhhqweh"
      }
    ]
    );
    /// padding组件示例
    // return _getGridCount(list);
    /// column or row组件示例
    // return Container(
    //   width: 700,
    //   height: 700,
    //   color: Colors.cyan,
    //   /// Row
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       IconDemo(Icons.home, size: 32, color: Colors.blueAccent),
    //       IconDemo(Icons.settings, size: 32, color: Colors.white),
    //       IconDemo(Icons.map, size: 32, color: Colors.green),
    //       IconDemo(Icons.map, size: 32, color: Colors.white),
    //     ],
    //   )
    // );
    return FlexExpanded();
  }
}
class IconDemo extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final double height;
  @override
  IconDemo(this.icon, {this.size, this.color, this.height = 100});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: this.height,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}

class FlexExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          color: Colors.black,
          margin: EdgeInsets.all(10),
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: IconDemo(Icons.search, size: 32, color: Colors.blueGrey),
              )
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    child: Image.asset('images/b.gif',
                      width: 120,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red
                      )
                    ),
                    child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=155339733,4269187651&fm=26&gp=0.jpg',
                      width: 120,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ),
          ],
        )
      ],
    );
  }
}