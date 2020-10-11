import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  ControlPage({Key key}) : super(key: key);

  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Row(
              children: [
                Expanded(
                  child: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.red,
                      labelColor: Colors.red,
                      unselectedLabelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(
                          text: "热门",
                        ),
                        Tab(
                          text: "推荐",
                        )
                      ]),
                )
              ],
            ),
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
