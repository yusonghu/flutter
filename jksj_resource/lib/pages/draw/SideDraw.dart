import 'package:flutter/material.dart';

class SideDrawerPage extends StatefulWidget {
  SideDrawerPage({Key key}) : super(key: key);

  @override
  _SideDrawerPageState createState() => _SideDrawerPageState();
}

class _SideDrawerPageState extends State<SideDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'RedKeyset',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('redkeyset@gmail.com'),
            //定义用户头像，CircleAvatar 指定成圆形
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://dwz.cn/YfHol40M'),
            ),
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent, //区域背景颜色
                image: DecorationImage(
                    image: NetworkImage('https://dwz.cn/N00Lpoj0'),
                    fit: BoxFit.cover,
                    // ColorFilter 颜色滤镜  BlendMode混合模式
                    colorFilter: ColorFilter.mode(
                        Colors.blue[300]
                            .withOpacity(0.2), // blueAccent 这一类的颜色会报错
                        BlendMode.srcOver))),
          ),
        ],
      ),
    );
  }
}
