import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key key}) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("注册"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("输入手机号"),
            RaisedButton(
                child: Text("完成"),
                onPressed: () {
                  //用第二部成功的页面替换掉当前页面。那么返回的时候，就直接返回到主页面了
                  //Navigator.of(context).pushReplacementNamed("/registerThird");

                  Navigator.of(context).pushNamed("/registerThird");
                }),
          ],
        ));
  }
}
