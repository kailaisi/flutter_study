import 'package:flutter/material.dart';

//自定义Dialog
class LoadingDialog extends Dialog {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
