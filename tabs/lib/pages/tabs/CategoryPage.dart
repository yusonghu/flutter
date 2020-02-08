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
            child: Text('跳转之表单页面')
            ,onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => FormPage(title: '跳转表单页面',)));
          })
        ],
      ),
    );
  }
}
