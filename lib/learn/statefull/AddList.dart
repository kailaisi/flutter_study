import 'package:flutter/material.dart';

//点击按钮，增加listview的数量
class ListAdd extends StatefulWidget {
  ListAdd({Key key}) : super(key: key);

  @override
  _ListAddState createState() => _ListAddState();
}

class _ListAddState extends State<ListAdd> {
  List list = List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: list.map((e) => Text("data")).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
            child: Text("add"),
            onPressed: () {
              setState(() {
                list.add("value");
              });
            })
      ],
    );
  }
}
