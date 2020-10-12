import 'package:flutter_info/learn/statefull/pages/AppBarDemo.dart';
import 'package:flutter_info/learn/statefull/pages/BottomBar.dart';
import 'package:flutter_info/learn/statefull/pages/From.dart';
import 'package:flutter_info/learn/statefull/pages/TabBarController.dart';
import 'package:flutter_info/learn/statefull/pages/other/Button.dart';
import 'package:flutter_info/learn/statefull/pages/second/Product.dart';
import 'package:flutter_info/learn/statefull/pages/second/ProductDetail.dart';
import 'package:flutter_info/learn/statefull/pages/second/Search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_info/learn/statefull/pages/user/Login.dart';
import 'package:flutter_info/learn/statefull/pages/user/RegisterFirst.dart';
import 'package:flutter_info/learn/statefull/pages/user/RegisterSecond.dart';
import 'package:flutter_info/learn/statefull/pages/user/RegisterThird.dart';
import 'package:flutter_info/learn/statefull/pages/user/User.dart';

//统一的路由管理
final routers = {
  '/': (context) => TabWidget(),
  //底部状态栏
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/search': (context) => SearchPage(),
  '/product': (context) => ProductPage(),
  '/product_detail': (context, {arguments}) => ProductDetail(arguments),
  //设置页面
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  //appbar
  '/appbarDemo': (context) => AppBarDemoPage(),
  //tab
  '/tabBarController': (context) => TabBarControllerPage(),
  //侧边栏
  '/user': (context) => UserPage(),
  '/buttonPage': (context) => ButtonPage(),
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
