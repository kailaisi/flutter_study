import 'package:flutter/material.dart';

//远程URL加载图片
class ImageUrlContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Image.network(
        "https://pic4.zhimg.com/v2-fffb3efa1454be60832c82544f30c823_r.jpg",
        alignment: Alignment.bottomRight,
        // color: Colors.red,
        // colorBlendMode: BlendMode.screen,
        fit: BoxFit.contain,
        repeat: ImageRepeat.repeatX,
      ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(width: 1.0, color: Colors.blue),
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      padding: EdgeInsets.all(10),
    ));
  }
}

//圆形图片
class ImageCircleContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602261597301&di=4afa64b5124ec5ce2bd36d8fdc9b72f7&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F0221204fb954757f61af77d589f57cdc3e4e3f30.jpg"),
                  fit: BoxFit.cover))),
    );
  }
}

//圆形图片2
class ImageCircleContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602261597301&di=4afa64b5124ec5ce2bd36d8fdc9b72f7&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F0221204fb954757f61af77d589f57cdc3e4e3f30.jpg",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

//圆形本地图片2
class ImageLocalCircleContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.asset(
            "images/welcome_bg.png",
            width: 300,
            height: 300,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
