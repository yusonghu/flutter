import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({String title='我是表单页面'}){
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('这是表单页面'),
    );
  }
}