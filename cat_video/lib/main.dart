import 'package:flutter/material.dart';

void main() => runApp(MyVideo());

class MyVideo extends StatelessWidget {
  const MyVideo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('测试'),),
      ),
    );
  }
}