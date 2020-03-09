import 'package:flutter/material.dart';
import '../draw/SideDraw.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('程序员学习资源APP'),
      ),
      body: CardList(),
      drawer: new SideDrawerPage(),
    );
  }
}

class CardList extends StatefulWidget {

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Icon(Icons.book),
            title: Text('分布式协议与算法实现'),
            subtitle: Text('22讲'),
            trailing:Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, '/resourceList');
            },
          ),
        ),
      ],
    );
  }
}
