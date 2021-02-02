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
            decoration: BoxDecoration(),
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
    return _getGridCount(list);
  }
}