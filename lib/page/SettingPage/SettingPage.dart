import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class SettingPage extends StatefulWidget {
  final arguments;
  SettingPage({this.arguments});
  @override
  State<StatefulWidget> createState() => SettingPageState(arguments: this.arguments);
}
/// TabsState继承State能够改变数据
class SettingPageState extends State {
  int index = 0;
  final arguments;
  var now = DateTime.now();
  DateTime _nowDate = DateTime.now();
  DateTime _otherNowDate = DateTime.now();
  var _timeDate = TimeOfDay(hour: 12, minute: 30);

  SettingPageState({this.arguments}) {
    print('${this.arguments}');

    /// 日期转换为时间戳
    print(now.millisecondsSinceEpoch);
    /// 时间戳转换为日期
    print(DateTime.fromMillisecondsSinceEpoch(1613888702844));
    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // title: Text('${this.pageContext}'),
        title: Text('${this.arguments['id']}Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                if (this.arguments['id'] == 95271) {
                  // Navigator.of(context).pushNamedAndRemoveUntil(
                  //     '/',
                  //     (route) => false,
                  // );
                  print('object');
                  /// popUntil必须保留对应的栈，才能返回到指定名称的页面
                  /// 会将之前的所有栈清除
                  Navigator.of(context).popUntil(ModalRoute.withName('/register'));
                } else {
                  /// 直接pop跳转到上一页
                  Navigator.of(context).pop();
                }
              },
              // child: Text('${this.pageContext}')
              child: Text('${this.arguments['id']}这是按钮')
          ),
          /// 自带的日期组件
          Row(
            children: [
              InkWell(
                child: Row(
                  children: [
                    Text('${formatDate(_nowDate, [yyyy, '年', mm, '月', dd])}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: _showDatePicker,
              ),
              SizedBox(height: 20,),
              InkWell(
                child: Row(
                  children: [
                    Text('${this._timeDate.format(context)}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: _showTimePicker,
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                child: Row(
                  children: [
                    Text('${formatDate(_otherNowDate, [yyyy, '年', mm, '月', dd, '日', HH, '时', nn, '分'])}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: () {
                  /// 第三方日期时间组件
                  DatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2018, 3, 5, 20, 59),
                      maxTime: DateTime(2022, 6, 7, 20, 58), onChanged: (date) {
                          print('change $date');
                      }, onConfirm: (date) {
                          setState(() {
                            this._otherNowDate = date;
                          });
                          print('confirm $date');
                      }, currentTime: _otherNowDate, locale: LocaleType.zh);
                },
              ),
            ],
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.print), label: '123213'),
      //     BottomNavigationBarItem(icon: Icon(Icons.print), label: '123213'),
      //   ],
      // ),
    );
  }

  /// 日期组件
  _showDatePicker() async {
    /// flutter自带的日期组件
    // showDatePicker(
    //     context: context,
    //     initialDate: _nowDate,
    //     firstDate: DateTime(1980),
    //     lastDate: DateTime(2022)
    //     /// 异步日期组件，需要then来获取异步日期
    // ).then((value) => print(value));

    /// 通过async和await获取异步日期数据
    var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2022),
      /// 异步日期组件，需要then来获取异步日期
    );
    /// 获取日期，并改变数据
    setState(() {
      this._nowDate = result;
    });
  }
  /// 时间组件
  _showTimePicker() async {
    var result = await showTimePicker(
        context: context,
        initialTime: _timeDate
    );
    setState(() {
      print(result);
      this._timeDate = result;
    });
  }
}