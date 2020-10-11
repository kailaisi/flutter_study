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
                    // 基于DrawerHeader实现
                    // child: DrawerHeader(
                    //     child: CircleAvatar(
                    //       backgroundImage: NetworkImage(
                    //           "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2052053857,655414597&fm=26&gp=0.jpg"),
                    //     ),
                    //     decoration: BoxDecoration(color: Colors.green)),
                    child: UserAccountsDrawerHeader(
                      accountName: Text("开了肯"),
                      accountEmail: Text("541018378@qq.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2052053857,655414597&fm=26&gp=0.jpg"),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1602406606&di=85ca63bc366f4a1422db63ef62d2ec94&src=http://pic1.win4000.com/wallpaper/6/577dff88921e2.jpg"),
                            fit: BoxFit.cover),
                      ),
                      otherAccountsPictures: [
                        Image.network(
                            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1602406606&di=85ca63bc366f4a1422db63ef62d2ec94&src=http://pic1.win4000.com/wallpaper/6/577dff88921e2.jpg"),
                        Image.network(
                            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1602406606&di=85ca63bc366f4a1422db63ef62d2ec94&src=http://pic1.win4000.com/wallpaper/6/577dff88921e2.jpg"),
                        Image.network(
                            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1602406606&di=85ca63bc366f4a1422db63ef62d2ec94&src=http://pic1.win4000.com/wallpaper/6/577dff88921e2.jpg"),
                      ],
                    ),
                  )
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
                onTap: () {
                  Navigator.of(context).pop(); //隐藏侧边栏
                  Navigator.of(context).pushNamed("/user");
                },
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
