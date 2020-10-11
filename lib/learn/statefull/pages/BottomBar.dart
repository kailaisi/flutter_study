import 'package:flutter/material.dart';
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
    CategoryPage(),
    ControlPage(),
    SettingPage(),
  ];

  _TabState(this._current);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: this._pageList[_current % 4],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _current,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.equalizer), label: "设备"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "群控"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          ],
          backgroundColor: Colors.greenAccent,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.shifting,
          onTap: (int index) {
            setState(() {
              this._current = index;
            });
          },
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: DrawerHeader(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2052053857,655414597&fm=26&gp=0.jpg"),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2052053857,655414597&fm=26&gp=0.jpg"),
                              fit: BoxFit.cover),
                        )),
                  ),
                ],
              ),
              ListTile(
                title: Text("我的空间"),
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
              ),
              Divider(),
              ListTile(
                title: Text("用户中心"),
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
              ),
              Divider(),
              ListTile(
                title: Text("设置中心"),
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
              ),
            ],
          ),
        ));
  }
}
