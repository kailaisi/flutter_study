import 'package:flutter/material.dart';

class RadioBoxPage extends StatefulWidget {
  RadioBoxPage({Key key}) : super(key: key);

  @override
  _RadioBoxPageState createState() => _RadioBoxPageState();
}

class _RadioBoxPageState extends State<RadioBoxPage> {
  var _sex = 1;
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio页面"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("男："),
              Radio(
                  value: 1,
                  groupValue: this._sex,
                  onChanged: (v) {
                    setState(() {
                      this._sex = v;
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text("男："),
              Radio(
                  value: 2,
                  groupValue: this._sex,
                  onChanged: (v) {
                    setState(() {
                      this._sex = v;
                    });
                  })
            ],
          ),
          RadioListTile(
            value: 1,
            title: Text("这是一级标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.arrow_drop_down),
            groupValue: this._sex,
            onChanged: (v) {
              setState(() {
                this._sex = v;
              });
            },
            selected: _sex == 1,
          ),
          RadioListTile(
            value: 2,
            title: Text("这是一级标题"),
            subtitle: Text("二级标题"),
            secondary: Image.network(
                "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3874200651,1404071533&fm=26&gp=0.jpg"),
            groupValue: this._sex,
            onChanged: (v) {
              setState(() {
                this._sex = v;
              });
            },
            selected: _sex == 2,
          ),
          Switch(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              })
        ],
      ),
    );
  }
}
