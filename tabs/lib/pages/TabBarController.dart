import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    this._tabController = new TabController(length: 2, vsync: this);
    this._tabController.addListener((){
      print(this._tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarController'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: '热销',
            ),
            Tab(
              text: '推荐',
            )
          ],
        ),
      ),
      body: TabBarView(controller: this._tabController, children: <Widget>[
        Center(
          child: Text('热销商品'),
        ),
        Center(
          child: Text('推荐商品'),
        )
      ]),
    );
  }
}
