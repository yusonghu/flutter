import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Map arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是搜索页面'),
      ),
      body:
          Text('搜索页面，搜索结果${this.arguments == null ? 0 : this.arguments['id']}'),
    );
  }
}
