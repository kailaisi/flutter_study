import 'package:flutter/material.dart';

//测试有状态组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text("$countNum"),
        RaisedButton(
            child: Text("add"),
            onPressed: () {
              setState(() {
                countNum++;
              });
            })
      ],
    );
  }
}
