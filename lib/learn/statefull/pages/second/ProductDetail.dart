import 'package:flutter/material.dart';

/// 商品详情页面
class ProductDetail extends StatefulWidget {
  final arguments;
  ProductDetail(this.arguments);

  @override
  _ProductDetailState createState() => _ProductDetailState(arguments);
}

class _ProductDetailState extends State<ProductDetail> {
  var arguments;

  _ProductDetailState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情页面"),
      ),
      body: Text("我是商品详情页面，商品id是${arguments["id"]}"),
    );
  }
}
