import 'package:flutter/material.dart';

class AppBarDemoPage extends StatefulWidget {
  AppBarDemoPage({Key key}) : super(key: key);

  @override
  _AppBarDemoPageState createState() => _AppBarDemoPageState();
}

class _AppBarDemoPageState extends State<AppBarDemoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("AppBarDemo"),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("search");
                },
              ),
            ],
            bottom: TabBar(tabs: [
              Tab(
                text: "热门",
              ),
              Tab(
                text: "推荐",
              )
            ]),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  ListTile(
                    title: Text("第一个Tab"),
                  ),
                  ListTile(
                    title: Text("第一个Tab"),
                  ),
                  ListTile(
                    title: Text("第一个Tab"),
                  ),
                  ListTile(
                    title: Text("第一个Tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第二个Tab"),
                  ),
                  ListTile(
                    title: Text("第二个Tab"),
                  ),
                  ListTile(
                    title: Text("第二个Tab"),
                  ),
                  ListTile(
                    title: Text("第一个Tab"),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
