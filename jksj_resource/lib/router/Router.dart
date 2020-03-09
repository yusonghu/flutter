import 'package:flutter/material.dart';
import '../pages/home/Home.dart';
import '../pages/list/ResourceList.dart';

var routes = {
  '/': (context) => HomePage(),
  '/resourceList': (context)=>ResourceListPage()
};


//  可以当作固定写法
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
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
