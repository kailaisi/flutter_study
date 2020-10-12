import 'package:flutter/material.dart';

//表单页面
class FormPage extends StatefulWidget {
  final arguments;
  FormPage({this.arguments});

  @override
  _FormPageState createState() => _FormPageState(arguments);
}

class _FormPageState extends State<FormPage> {
  var _userName = new TextEditingController(); //初始化进行复制
  var _password;
  final arguments;
  _FormPageState(this.arguments);

  @override
  void initState() {
    super.initState();
    _userName.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments["title"]),
      ),
      body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: this._userName,
                onChanged: (value) {
                  _userName.text = value;
                },
                decoration: InputDecoration(hintText: "输入用户名"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: "输入密码"),
                onChanged: (value) {
                  _password = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  child: Text("登录"),
                  onPressed: () {
                    print(this._userName.text);
                    print(this._password);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              )
            ],
          )),
      //  TextDemo()),
      floatingActionButton: FloatingActionButton(
        child: Text("更多"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

// 各种表单样式
class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
                hintText: "请输入搜索内容", border: OutlineInputBorder()),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              border: OutlineInputBorder(),
              labelText: "用户名",
            ),
          )
        ],
      ),
    );
  }
}
