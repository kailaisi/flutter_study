import 'package:flutter/material.dart';
import 'package:flutter_info/learn/statefull/pages/From.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/registerFirst');
            },
            child: Text("注册"),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text("登录"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      FormPage(arguments: {"title": "路由命名跳转"})));
            },
            child: Text("跳转到表单页面"),
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listpage',
                  arguments: {"title": "我是路由命名跳转"});
            },
            child: Text("命名路由跳转ListView"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/checkbox');
            },
            child: Text("单选框"),
          ),
        ]);
  }
}
