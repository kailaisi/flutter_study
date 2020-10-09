import 'package:flutter/material.dart';
import 'package:flutter_info/ListViewDart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: ListViewImage(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

//主Demo
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        '你好，flutter',
        textAlign: TextAlign.center,
        overflow: TextOverflow.fade,
        maxLines: 1,
        textScaleFactor: 2,
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.red,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.blue,
            decorationStyle: TextDecorationStyle.dotted),
      ),
      height: 300.0,
      width: 200.0,
      decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(width: 1.0, color: Colors.blue),
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      padding: EdgeInsets.all(40),
    ));
  }
}
