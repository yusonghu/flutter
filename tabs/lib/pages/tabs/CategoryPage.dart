import 'package:flutter/material.dart';
import '../Form.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
