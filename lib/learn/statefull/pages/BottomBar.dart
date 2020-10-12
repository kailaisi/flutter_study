import 'package:flutter/material.dart';
import 'package:flutter_info/learn/public/LeftDrawer.dart';
import 'package:flutter_info/learn/statefull/pages/tabs/Home.dart';
import 'package:flutter_info/learn/statefull/pages/tabs/Category.dart';
import 'package:flutter_info/learn/statefull/pages/tabs/Control.dart';
import 'package:flutter_info/learn/statefull/pages/tabs/Setting.dart';

//底部的导航栏
class TabWidget extends StatefulWidget {
  final index;
  TabWidget({this.index = 0});

  @override
  _TabState createState() => _TabState(index);
}

class _TabState extends State<TabWidget> {
  int _current = 0;
  List _pageList = [
    HomePage(),
    ControlPage(),
    SettingPage(),
    SettingPage(),
    SettingPage(),
  ];

  _TabState(this._current);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        floatingActionButton: Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32), color: Colors.white),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                this._current = 2;
              });
            },
            backgroundColor: this._current == 2 ? Colors.red : Colors.blue,
            child: Icon(Icons.add),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: this._pageList[_current % 4],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _current,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
            BottomNavigationBarItem(icon: Icon(Icons.equalizer), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.share), label: "分享"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          ],
          backgroundColor: Colors.grey[50],
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              this._current = index;
            });
          },
        ),
        drawer: Drawer(child: LeftDraw()));
  }
}
