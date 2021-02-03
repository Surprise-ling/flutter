import 'package:flutter/material.dart';

class StackPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.blue,
        child: Stack(
          children: [
            /// Align组件使用alignment定位
            Align(
              alignment: Alignment(1, -0.2),
              child: Icon(Icons.home),
            ),
            /// Positioned组件使用top、left、right、bottom
            Positioned(
              top: 50,
              left: 100,
              child: Image.asset('images/b.gif'),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.search_off, size: 32, color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}