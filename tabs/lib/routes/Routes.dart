import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';
var routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/tabBar': (context) => TabBarControllerPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/user':(context)=>UserPage(),
  
};

//  可以当作固定写法
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  print(name);
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
