import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key key}) : super(key: key);

  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("注册"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("这是个注册页面"),
            RaisedButton(
                child: Text("下一步"),
                onPressed: () {
                  //用第二部成功的页面替换掉当前页面。那么返回的时候，就直接返回到主页面了
                  //Navigator.of(context).pushReplacementNamed("/registerSecond");

                  Navigator.of(context).pushNamed("/registerSecond");
                }),
          ],
        ));
  }
}
