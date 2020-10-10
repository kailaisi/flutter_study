import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "data",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                )),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "data",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "data",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                )),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "data",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
