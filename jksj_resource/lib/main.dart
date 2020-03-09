import 'package:flutter/material.dart';
import 'router/Router.dart';
void main() => runApp(JKApp());

class JKApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
