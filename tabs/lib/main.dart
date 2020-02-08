import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tabs',
      // home: Tabs(),
      initialRoute: '/',
      //  配置路由
      // routes: routes,
      //  监听路由传值(需要将routes删掉)
      onGenerateRoute: onGenerateRoute,
    );
  }
}
