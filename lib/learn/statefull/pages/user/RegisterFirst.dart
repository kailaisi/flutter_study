import 'package:flutter/material.dart';

//注册页面
class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key key}) : super(key: key);

  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  var _sex = 1;

  var _hobby = [
    {"checked": true, "title": "美食"},
    {"checked": false, "title": "健身"},
    {"checked": false, "title": "读书"},
    {"checked": false, "title": "旅游"},
  ];
  List<Widget> _getHobby() {
    List<Widget> temp = [];
    for (int i = 0; i < _hobby.length; i++) {
      temp.add(Row(
        children: [
          Text(_hobby[i]["title"]),
          Checkbox(
            value: _hobby[i]["checked"],
            onChanged: (value) {
              setState(() {
                _hobby[i]["checked"] = value;
              });
            },
          )
        ],
      ));
    }
    return temp;
  }

  _setSex(v) {
    setState(() {
      this._sex = v;
    });
  }

  String _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("注册"),
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  maxLength: 30,
                  decoration: InputDecoration(
                    hintText: "请输入用户名",
                  ),
                  onChanged: (v) {
                    this._name = v;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("男:"),
                    Radio(
                      value: 1,
                      groupValue: this._sex,
                      onChanged: _setSex,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("女:"),
                    Radio(
                      value: 2,
                      groupValue: this._sex,
                      onChanged: _setSex,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("兴趣爱好："),
                Wrap(
                  children: _getHobby(),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "个人描述", border: OutlineInputBorder()),
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                      child: Text("下一步"),
                      onPressed: () {
                        //用第二部成功的页面替换掉当前页面。那么返回的时候，就直接返回到主页面了
                        //Navigator.of(context).pushReplacementNamed("/registerSecond");

                        Navigator.of(context).pushNamed("/registerSecond");
                      }),
                )
              ],
            )));
  }
}
