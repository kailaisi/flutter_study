import 'package:flutter/material.dart';
import 'package:flutter_info/learn/ui/LoadingDialog.dart';

import '../../../RowDart.dart';

// 显示的各种dialog样式
class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _showDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("消息提醒"),
            content: Text("确定要关闭消息么"),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, "ok");
                  },
                  child: Text("确定")),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, "cancel");
                  },
                  child: Text("取消")),
            ],
          );
        });
    print(result);
  }

  _showSimpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("消息提醒"),
            children: [
              SimpleDialogOption(
                child: Text("游泳"),
                onPressed: () {
                  Navigator.pop(context, "游泳");
                },
              ),
              SimpleDialogOption(
                child: Text("游泳"),
                onPressed: () {
                  Navigator.pop(context, "游泳");
                },
              ),
              SimpleDialogOption(
                child: Text("游泳"),
                onPressed: () {
                  Navigator.pop(context, "游泳");
                },
              ),
              SimpleDialogOption(
                child: Text("游泳"),
                onPressed: () {
                  Navigator.pop(context, "游泳");
                },
              ),
              SimpleDialogOption(
                child: Text("游泳"),
                onPressed: () {
                  Navigator.pop(context, "游泳");
                },
              ),
            ],
          );
        });
    print(result);
  }

  _showBottom() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 60,
              child: Row(
                children: [
                  IconContainer(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  IconContainer(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  Expanded(
                    child: IconContainer(
                      Icons.search_off,
                      color: Colors.red,
                    ),
                  )
                ],
              ));

          // Column(
          //   children: [
          //     ListTile(
          //       title: Text("分享到朋友圈"),
          //       leading: Icon(Icons.share),
          //     ),
          //     ListTile(
          //       title: Text("分享给朋友"),
          //       leading: Icon(Icons.share),
          //     ),
          //     ListTile(
          //       title: Text("生成海报"),
          //       leading: Icon(Icons.share),
          //     ),
          //   ],
          // ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("对话框"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                onPressed: _showDialog,
                child: Text("标准对话框"),
              ),
              RaisedButton(
                onPressed: _showSimpleDialog,
                child: Text("标准对话框"),
              ),
              RaisedButton(
                onPressed: _showBottom,
                child: Text("底部对话框"),
              ),
              RaisedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return LoadingDialog();
                      });
                },
                child: Text("自定义Dialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
