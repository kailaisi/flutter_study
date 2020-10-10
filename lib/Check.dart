import 'package:flutter/material.dart';

//检测，用于检测学习效果
class CheckLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Image.network(
                    "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1377620511,4033319492&fm=26&gp=0.jpg",
                    fit: BoxFit.fill,
                  ),
                  height: 180,
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: ListView(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.network(
                              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2052053857,655414597&fm=26&gp=0.jpg",
                              fit: BoxFit.fill,
                              height: 85,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            flex: 1,
                            child: Image.network(
                              "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3874200651,1404071533&fm=26&gp=0.jpg",
                              fit: BoxFit.fill,
                              height: 85,
                            )),
                      ],
                    )))
          ],
        )
      ],
    );
  }
}
