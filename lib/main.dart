import 'package:flutter/material.dart';
import 'package:flutter_info/learn/ListViewDart.dart';
import 'package:flutter_info/learn/Card.dart';
import 'learn/gridViewDart.dart';
import 'learn/RowDart.dart';
import 'package:flutter_info/Check.dart';
import 'learn/StackDart.dart';
import 'learn/Wrap.dart';
import 'learn/statefull/AddList.dart';
import 'learn/statefull/pages/BottomBar.dart';
import 'learn/statefull/Demo1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabWidget(),
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
