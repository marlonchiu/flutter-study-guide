import 'package:flutter/material.dart';
import 'warp_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 流式布局模拟添加照片效果',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: WrapDemo(),
      ),
    );
  }
}