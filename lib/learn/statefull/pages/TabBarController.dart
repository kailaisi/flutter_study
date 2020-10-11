import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    //生命周期函数
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    //销毁
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TabBarControllerPage"),
          bottom: TabBar(controller: _tabController, tabs: [
            Tab(text: "热销"),
            Tab(text: "推荐1"),
            Tab(text: "推荐2"),
            Tab(text: "推荐3"),
            Tab(text: "推荐4")
          ]),
        ),
        body: TabBarView(controller: _tabController, children: [
          ListView(
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
          ListView(
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
          ListView(
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
          ListView(
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
          ListView(
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
        ]));
  }
}
