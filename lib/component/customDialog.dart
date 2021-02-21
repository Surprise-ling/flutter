import 'dart:async';

import 'package:flutter/material.dart';

/// 自定义dialog，需要继承dialog
class CustomDialog extends Dialog {
  String title;
  String content;
  CustomDialog(this.title, this.content);

  /// 定时器，3秒后关闭dialog
  _closeTimer(context) {
    var time;
    time = Timer.periodic(
      Duration(milliseconds: 3000), (timer) {
        Navigator.pop(context);
      timer.cancel();
    });
  }
  @override
  Widget build(BuildContext context) {

    // _closeTimer(context);

    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(title),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Icon(Icons.close),
                          highlightColor: Colors.red,
                          onTap: () {
                            print('object');
                            // Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  )
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: Text(content, textAlign: TextAlign.left,),
              )
            ],
          ),
        )
      ),
    );
  }
}