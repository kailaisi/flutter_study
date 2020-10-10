import 'package:flutter/material.dart';
import 'package:flutter_info/res/listData.dart';

//网格布局
class LayoutDemo extends StatelessWidget {
  //自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((e) {
      var img =
          "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3980237351,3514590672&fm=26&gp=0.jpg";
      if (e["img"] != null) {
        img = e["img"];
      }
      return Container(
        child: Column(
          children: [
            Image.network(
              img,
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Text(e["name"]),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(233, 233, 233, 0.9), width: 2)),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10),
      children: this._getData(),
    );
  }
}

//网格布局,通过builder来实现
class LayoutDemo2 extends StatelessWidget {
  //自定义方法
  Widget _getData(context, index) {
    var e = listData[index];
    var img =
        "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3980237351,3514590672&fm=26&gp=0.jpg";
    if (e["img"] != null) {
      img = e["img"];
    }
    return Container(
      child: Column(
        children: [
          Image.network(
            img,
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10,
          ),
          Text(e["name"]),
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 2)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listData.length,
      itemBuilder: this._getData,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
    );
  }
}
