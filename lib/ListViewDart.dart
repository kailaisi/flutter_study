import 'dart:ui';

import 'package:flutter/material.dart';

//最基本的列表
class ListViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 40,
          ),
          title: Text(
            "data",
            style: TextStyle(fontSize: 28),
          ),
          subtitle: Text("subtitle"),
          trailing: Icon(Icons.ac_unit_rounded),
        ),
        ListTile(
          leading: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602261597301&di=4afa64b5124ec5ce2bd36d8fdc9b72f7&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F0221204fb954757f61af77d589f57cdc3e4e3f30.jpg"),
          title: Text("data"),
          subtitle: Text("subtitle"),
        ),
        ListTile(
          leading: Icon(Icons.wifi_tethering_rounded),
          title: Text("data"),
          subtitle: Text("subtitle"),
        ),
        ListTile(
          leading: Icon(Icons.wifi_calling),
          title: Text("data"),
          subtitle: Text("subtitle"),
        ),
        ListTile(
          leading: Icon(Icons.wifi_lock),
          title: Text("data"),
          subtitle: Text("subtitle"),
        ),
      ],
      padding: EdgeInsets.all(10),
    );
  }
}

//图片列表
class ListViewImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        child: ListView(
          children: [
            Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602261597301&di=4afa64b5124ec5ce2bd36d8fdc9b72f7&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F0221204fb954757f61af77d589f57cdc3e4e3f30.jpg"),
            Container(
              child: Text(
                "我是一个标题",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              height: 180,
              width: 60,
            ),
            Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602261597301&di=4afa64b5124ec5ce2bd36d8fdc9b72f7&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F0221204fb954757f61af77d589f57cdc3e4e3f30.jpg"),
            Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602261597301&di=4afa64b5124ec5ce2bd36d8fdc9b72f7&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F0221204fb954757f61af77d589f57cdc3e4e3f30.jpg"),
            Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602261597301&di=4afa64b5124ec5ce2bd36d8fdc9b72f7&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F0221204fb954757f61af77d589f57cdc3e4e3f30.jpg"),
            Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602261597301&di=4afa64b5124ec5ce2bd36d8fdc9b72f7&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F0221204fb954757f61af77d589f57cdc3e4e3f30.jpg"),
          ],
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
        ));
  }
}
