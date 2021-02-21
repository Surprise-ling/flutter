import 'package:flutter/material.dart';
import 'package:flutter_app/routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'page/BottomTab.dart' as Tabs;

void main(List<String> args) {
  runApp(MyApp());
}

// 无状态组件
class MyApp extends StatelessWidget {

  // 实现继承的抽象类方法
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      /// 去掉右上角的debug图标
      debugShowCheckedModeBanner: false,
      /// 主题样式
      theme: ThemeData(
          highlightColor: Colors.transparent, // 长按时的扩散效果设置为透明
          // splashColor: Colors.transparent, // 点击时的高亮效果设置为透明
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle()
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.yellow),
                shadowColor: MaterialStateProperty.all(Colors.white),
                overlayColor: MaterialStateProperty.all(Colors.black)
              )
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle()
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.red,
              elevation: 0,
              highlightElevation: 0
          )
      ),
      /// 使用命名路由初始化进入界面
      // home: Tabs.Tabs(),
      /// 设置国际化语言
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      /// 设置中文为首选项
      supportedLocales: [
        // const Locale('en'),
        const Locale('en'),
      ],
      /// 初始化加载的路由
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,

    );
  }
}

