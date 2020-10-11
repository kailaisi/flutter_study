import 'package:flutter_info/learn/statefull/pages/AppBarDemo.dart';
import 'package:flutter_info/learn/statefull/pages/BottomBar.dart';
import 'package:flutter_info/learn/statefull/pages/From.dart';
import 'package:flutter_info/learn/statefull/pages/TabBarController.dart';
import 'package:flutter_info/learn/statefull/pages/second/Product.dart';
import 'package:flutter_info/learn/statefull/pages/second/ProductDetail.dart';
import 'package:flutter_info/learn/statefull/pages/second/Search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_info/learn/statefull/pages/user/Login.dart';
import 'package:flutter_info/learn/statefull/pages/user/RegisterFirst.dart';
import 'package:flutter_info/learn/statefull/pages/user/RegisterSecond.dart';
import 'package:flutter_info/learn/statefull/pages/user/RegisterThird.dart';

//统一的路由管理
final routers = {
  '/': (context) => TabWidget(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/search': (context) => SearchPage(),
  '/product': (context) => ProductPage(),
  '/product_detail': (context, {arguments}) => ProductDetail(arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appbarDemo': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
};

//统一的路由传参跳转处理
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  String name = settings.name;
  Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
