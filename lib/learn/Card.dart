import 'package:flutter/material.dart';
import 'package:flutter_info/res/listData.dart';

//简单card的示例
class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3874200651,1404071533&fm=26&gp=0.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text("xxxx"),
                subtitle: Text("xxxx"),
                leading: ClipOval(
                  child: Image.network(
                    "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2052053857,655414597&fm=26&gp=0.jpg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3874200651,1404071533&fm=26&gp=0.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                  title: Text("xxxx"),
                  subtitle: Text("xxxx"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2052053857,655414597&fm=26&gp=0.jpg"),
                  )),
            ],
          ),
        )
      ],
    );
  }
}

//使用builder
class CardDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listData.map((value) {
      return Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 20 / 9,
              child: Image.network(
                "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3874200651,1404071533&fm=26&gp=0.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
                title: Text(value["name"]),
                subtitle: Text(value["id"]),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2052053857,655414597&fm=26&gp=0.jpg"),
                )),
          ],
        ),
      );
    }).toList());
  }
}
