import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'statefull',
        home: Scaffold(
          appBar: AppBar(
            title: Text('stateFul'),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listData = new List();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: this.listData.map((value){
              return ListTile(
                title: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text('添加元素'),
            onPressed: () {
              setState(() {
                this.listData.add('添加文本1');
                this.listData.add('添加文本2');
              });
            },
          )
        ],
      ),
    );
  }
}
