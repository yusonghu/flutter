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
  List _pageList = [
      HomePage(),
      CategoryPage(),
      SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
          type: BottomNavigationBarType.fixed,//  可以使用多个图标，若不添加这个，如果图标超过这个值图标则会挤下来
          onTap: (index) {
            setState(() {
              this._currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
