import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 引入静态资源图片

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/luolita.jpg'),
      width: 300.0,
      height: 434.0,
    );
  }
}
