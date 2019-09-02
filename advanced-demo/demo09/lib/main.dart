import 'package:flutter/material.dart';
import 'custom_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 贝塞尔曲线切割效果',
      debugShowCheckedModeBanner: false, // 去掉DeBug图标
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
