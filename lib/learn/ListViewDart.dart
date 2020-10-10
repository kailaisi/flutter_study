import 'dart:ui';

import 'package:flutter/material.dart';
import '../res/listData.dart';

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

//动态列表
class ListViewDy extends StatelessWidget {
  //自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((e) {
      var img =
          "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3980237351,3514590672&fm=26&gp=0.jpg";
      if (e["img"] != null) {
        img = e["img"];
      }
      return ListTile(
        title: Text(e["name"]),
        subtitle: Text(e["id"]),
        leading: Image.network(img),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}

//动态列表
class ListViewDy2 extends StatelessWidget {
  Widget _getListWidget(context, index) {
    var e = listData[index];
    var img =
        "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3980237351,3514590672&fm=26&gp=0.jpg";
    if (e["img"] != null) {
      img = e["img"];
    }
    return ListTile(
      title: Text(e["name"]),
      subtitle: Text(e["id"]),
      leading: Image.network(img),
      trailing: Image.network(img),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length, itemBuilder: this._getListWidget);
  }
}
