import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Map arguments;
  Login({this.arguments});
  @override
  State<StatefulWidget> createState() => LoginQ(arguments: this.arguments);
}

class LoginQ extends State {
  final Map arguments;
  LoginQ({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
    );
  }
}