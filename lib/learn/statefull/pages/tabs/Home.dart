import 'package:flutter/material.dart';
import 'package:flutter_info/learn/statefull/pages/second/Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SearchPage(),
              ));
            },
            child: Text("跳转到搜索页面"),
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
            child: Text("命名路由跳转"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            },
            child: Text("商品详情"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tabBarController');
            },
            child: Text("Tab自定义顶部Tab模块"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: Text("按钮演示页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/buttonPage');
            },
          ),
        ]);
  }
}
