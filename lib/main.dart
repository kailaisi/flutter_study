import 'package:flutter/material.dart';
import 'package:flutter_info/learn/ListViewDart.dart';
import 'package:flutter_info/learn/Card.dart';
import 'package:flutter_info/learn/statefull/pages/From.dart';
import 'package:flutter_info/learn/statefull/pages/Search.dart';
import 'package:flutter_info/routes/Routes.dart';
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
      initialRoute: "/appbarDemo",
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
