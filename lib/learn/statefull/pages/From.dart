import 'package:flutter/material.dart';
import 'package:flutter_info/res/listData.dart';

//表单页面
class FormPage extends StatefulWidget {
  final arguments;
  FormPage({this.arguments});

  @override
  _FormPageState createState() => _FormPageState(arguments);
}

class _FormPageState extends State<FormPage> {
  final arguments;
  _FormPageState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments["title"]),
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
      floatingActionButton: FloatingActionButton(
        child: Text("更多"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
