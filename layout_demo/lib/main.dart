import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutWidget(),
      ),
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh')
      ],
    );
  }
}

class LayoutWidget extends StatelessWidget {
  //  标题行
  Widget title = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 6),
              child: Text(
                '这是一段文本',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '这是一段文本描述',
              style: TextStyle(color: Colors.grey[500]),
            )
          ],
        )),
        FavoriteWidge(),
      ],
    ),
  );

  Widget buttonLine = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      _builderButtonColumn(Colors.blue, Icons.pool, "pool"),
      _builderButtonColumn(Colors.blue, Icons.call, "call"),
      _builderButtonColumn(Colors.blue, Icons.camera, "camera")
    ],
  );

  Widget textArea = Container(
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
    margin: EdgeInsets.all(20),
  );

  Widget picture = Container(
    child: Image.network(
      'https://static.runoob.com/images/demo/demo1.jpg',
      fit: BoxFit.cover,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        picture,
        title,
        buttonLine,
        textArea,
      ],
    );
  }

  static Column _builderButtonColumn(Color color, IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(color: color),
        )
      ],
    );
  }
}

class FavoriteWidge extends StatefulWidget {
  FavoriteWidge({Key key}) : super(key: key);

  @override
  _FavoriteWidgeState createState() => _FavoriteWidgeState();
}

class _FavoriteWidgeState extends State<FavoriteWidge> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
              icon: _isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
              color: Colors.red[500],
              onPressed: _toggetFavorite),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('${_favoriteCount}'),
          ),
        )
      ],
    );
  }

  ///  setState 将会重绘UI
  void _toggetFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
