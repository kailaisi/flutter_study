import 'package:flutter/material.dart';

//checkbox页面展示
class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var _flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox展示页面"),
      ),
      body: Center(
        child: Column(
          children: [
            Checkbox(
                value: this._flag,
                activeColor: Colors.yellow,
                onChanged: (value) {
                  setState(() {
                    this._flag = value;
                  });
                }),
            Divider(),
            CheckboxListTile(
                value: this._flag,
                title: Text("标题"),
                subtitle: Text("这是一个二级标题"),
                onChanged: (value) {
                  setState(() {
                    this._flag = value;
                  });
                }),
            Divider(),
            CheckboxListTile(
              title: Text("标题"),
              subtitle: Text("这是一个二级标题"),
              onChanged: (value) {
                setState(() {
                  this._flag = value;
                });
              },
              secondary: Icon(Icons.ac_unit_sharp),
              value: this._flag,
            )
          ],
        ),
      ),
    );
  }
}
