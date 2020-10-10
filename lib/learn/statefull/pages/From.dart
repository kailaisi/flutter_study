import 'package:flutter/material.dart';
import 'package:flutter_info/res/listData.dart';

//表单页面
class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单页面"),
        leading: Icon(Icons.arrow_back_rounded),
      ),
      body: ListView(
          children: listData.map((e) {
        return ListTile(
          title: Text(e["name"]),
          subtitle: Text(e["id"]),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3874200651,1404071533&fm=26&gp=0.jpg"),
          ),
        );
      }).toList()),
    );
  }
}
