import 'package:flutter/material.dart';
import 'package:flutter_info/learn/statefull/pages/From.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    FormPage(arguments: {"title": "路由命名跳转"})));
          },
          child: Text("跳转到表单页面"),
        ),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/form',
                arguments: {"title": "我是路由命名跳转"});
          },
          child: Text("命名路由跳转"),
        ),
      ],
    );
  }
}
