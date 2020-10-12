import 'package:flutter/material.dart';

//Button页面相关功能
class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Button"),
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                RaisedButton(child: Text("测试按钮"), onPressed: () {}),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  child: Text("阴影按钮"),
                  onPressed: () {},
                  elevation: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text("修改文字"),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  label: Text("图标按钮"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 200,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("自定义宽度"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  height: 60,
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("自适应"),
                  ),
                ))
              ],
            ),
            Row(
              children: [
                RaisedButton(
                    onPressed: () {},
                    child: Text("圆角按钮"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                Container(
                  height: 60,
                  width: 60,
                  child: RaisedButton(
                      color: Colors.blue,
                      splashColor: Colors.lightBlue,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text("圆形按钮"),
                      shape: CircleBorder(
                          side: BorderSide(width: 2, color: Colors.yellow))),
                ),
              ],
            ),
            FlatButton(
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.blue,
                child: Text("扁平按钮")),
            OutlineButton(
              onPressed: () {},
              textColor: Colors.blue,
              color: Colors.blue,
              focusColor: Colors.yellow,
              child: Text("边框按钮"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonBar(
                  children: [
                    OutlineButton(
                      onPressed: () {},
                      textColor: Colors.blue,
                      color: Colors.blue,
                      focusColor: Colors.yellow,
                      child: Text("登录"),
                    ),
                    OutlineButton(
                      onPressed: () {},
                      textColor: Colors.blue,
                      color: Colors.blue,
                      focusColor: Colors.yellow,
                      child: Text("注册"),
                    ),
                  ],
                )
              ],
            ),
            MyButton(
              text: "自定义按钮",
              width: 60,
              height: 80,
              press: () {
                print("自定义按钮");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final press;
  final double width;
  final double height;
  const MyButton(
      {this.text = "",
      this.height = 30.0,
      this.width = 80.0,
      this.press = null});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.height,
        width: this.width,
        child: RaisedButton(
          onPressed: this.press,
          child: Text(this.text),
        ));
  }
}
