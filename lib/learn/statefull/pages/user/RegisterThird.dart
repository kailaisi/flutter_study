import 'package:flutter/material.dart';
import 'package:flutter_info/learn/statefull/pages/BottomBar.dart';

class RegisterThirdPage extends StatefulWidget {
  RegisterThirdPage({Key key}) : super(key: key);

  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("注册"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("注册完成"),
            RaisedButton(
                child: Text("完成"),
                onPressed: () {
                  Navigator.of(context).pop();

                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(
                          builder: (context) => new TabWidget(
                                index: 3,
                              )),
                      (route) => route == null);
                }),
          ],
        ));
  }
}
