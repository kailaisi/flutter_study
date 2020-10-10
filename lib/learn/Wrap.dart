import 'package:flutter/material.dart';

//流式布局
class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.spaceAround,
      runAlignment: WrapAlignment.end,
      direction: Axis.vertical,
      children: [
        MyButton("text"),
        MyButton("text"),
        MyButton("text"),
        MyButton("text"),
        MyButton("text"),
        MyButton("text")
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("第一集"),
      textColor: Colors.black,
      onPressed: () {},
    );
  }
}
