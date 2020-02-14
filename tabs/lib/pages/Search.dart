import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Map arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('我是搜索页面'),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  text: '热门',
                ),
                Tab(text: '推荐')
              ]),
            ),
            body: TabBarView(
              children: <Widget>[
                ListView(children: <Widget>[
                  Text(
                      '搜索页面，搜索结果${this.arguments == null ? 0 : this.arguments['id']}'),
                ]),
                ListView(children: <Widget>[
                  ListTile(
                    title: Text('tabs'),
                  )
                ]),
              ],
            )));
  }
}
