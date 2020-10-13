import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//轮播图
class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("轮播图页面"),
      ),
      body: Column(
        children: [
          Container(
              child: AspectRatio(
            aspectRatio: 16 / 9,
            child: new Swiper(
              itemCount: 3,
              itemBuilder: (context, index) {
                return new Image.network(
                  "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1602406606&di=85ca63bc366f4a1422db63ef62d2ec94&src=http://pic1.win4000.com/wallpaper/6/577dff88921e2.jpg",
                  fit: BoxFit.cover,
                );
              },
              pagination: new SwiperPagination(),
              loop: true,
              itemWidth: 300.0,
              itemHeight: 400.0,
              autoplay: true,
              duration: 10000,
              layout: SwiperLayout.STACK,
            ),
          ))
        ],
      ),
    );
  }
}
