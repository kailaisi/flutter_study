import 'package:flutter/material.dart';

// 登录页面
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("登录页面"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("这是个登录页面"),
            RaisedButton(
                child: Text("登录"),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            Text("登录页面"),
          ],
        ));
  }
}
