import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
          flex: 2,
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.white;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
