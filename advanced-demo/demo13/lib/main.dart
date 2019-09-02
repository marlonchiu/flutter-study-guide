import 'package:flutter/material.dart';
import 'draggable_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Draggable拖动 控件案例',
      debugShowCheckedModeBanner: false, // 去掉DeBug图标
      theme: ThemeData.light(),
      home: DraggableDemo(),
    );
  }
}