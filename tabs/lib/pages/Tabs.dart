import 'package:flutter/material.dart';
import 'tabs/CategoryPage.dart';
import 'tabs/HomePage.dart';
import 'tabs/SettingPage.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [HomePage(), CategoryPage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs'),
          // centerTitle: true,
          // leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
          //   print("nemu");
          // }),
          // actions: <Widget>[
          //   IconButton(icon: Icon(Icons.settings), onPressed: (){
          //     print("setting");
          //   })
          // ],
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('分类')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('设置')),
          ],
          type: BottomNavigationBarType
              .fixed, //  可以使用多个图标，若不添加这个，如果图标超过这个值图标则会挤下来
          onTap: (index) {
            setState(() {
              this._currentIndex = index;
            });
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "http://p2.qhimg.com/bdm/960_593_0/t01840ce475b2e85cc0.jpg"),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "http://p9.qhimg.com/bdm/480_296_0/t018d9effa4c68e11c2.jpg"),
                          fit: BoxFit.cover)),
                  accountName: Text('flutter  Demo'),
                  accountEmail: Text('14868423455@qq.com')),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text('我的空间'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('用户中心'),
                onTap: () {
                  //  隐藏侧边栏
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/user');
                },
              )
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Text('右侧侧边栏'),
        ),
      ),
    );
  }
}
