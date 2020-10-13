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
          Row(
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
            ],
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
          Row(
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkbox');
                },
                child: Text("选择框"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/radio');
                },
                child: Text("单选框"),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/datepick');
            },
            child: Text("时间选择器"),
          ),
        ]);
  }
}
