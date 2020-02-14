import 'package:flutter/material.dart';
import '../TabBarController.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text(
                  '跳转至搜索页面',
                  style: TextStyle(color: Colors.white),
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  //  普通路由
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => SearchPage())
                  // );
                  //  命名路由传值
                  Navigator.pushNamed(context, '/search',
                      arguments: {"id": 20});
                }),
            RaisedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context)=>TabBarControllerPage())
                  // );
                  Navigator.pushNamed(context, '/tabBar');
                },
                child: Text('跳转至TabBarControllerPage'))
          ],
        ),
      ),
    );
  }
}
