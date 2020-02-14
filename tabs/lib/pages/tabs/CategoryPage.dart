import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              ///  菜单比较多的时候配置
              isScrollable: true, 
              labelColor: Colors.red,
              indicatorColor: Colors.red,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
              Tab(
                text: '推荐',
              ),
              Tab(
                text: '举报',
              )
            ]),
          ),
          body: TabBarView(children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text('跳转之表单页面'),
                      onPressed: () {
                        //  基本跳转
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => FormPage(
                        //           title: '跳转表单页面',
                        //         )));
                        //  使用命名路由跳转
                        Navigator.pushNamed(context, '/form');
                      })
                ],
              ),
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('测试一'),),
                ListTile(title: Text('测试二'),)
              ],
            )
          ]),
        ));
  }
}
