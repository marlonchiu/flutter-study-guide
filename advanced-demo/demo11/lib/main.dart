import 'package:flutter/material.dart';
import 'right_back_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 右滑返回上一页案例',
      debugShowCheckedModeBanner: false, // 去掉DeBug图标
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RightBackDemo(),
    );
  }
}