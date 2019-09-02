import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('贝塞尔曲线切割效果'),
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipperTwo(), // 定义裁切路径
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {  // size 传递过来的容器大小
    
    var path = Path();
    // 单点裁切
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 30);
    var firstControlPoint = Offset(size.width / 2, size.height);  // 第一个控制点在正中间
    var firstEndPoint = Offset(size.width, size.height - 30);
    // 一个二阶的贝塞尔曲线是需要控制点和终点的，控制点就像一块磁铁，
    // 把直线吸引过去，形成一个完美的弧度，这个弧度就是贝塞尔曲线了。

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
      // TODO: implement shouldReclip
      return false;
    }
}

class BottomClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {  // size 传递过来的容器大小
    
    var path = Path();
    // 单点裁切
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 40);
    
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width/2.25, size.height - 30);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 4*3, size.height - 80); 
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
      // TODO: implement shouldReclip
      return false;
    }
}
