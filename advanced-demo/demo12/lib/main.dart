import 'package:flutter/material.dart';
import 'tool_tip_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ToolTip控件轻提示案例',
      debugShowCheckedModeBanner: false, // 去掉DeBug图标
      theme: ThemeData.light(),
      home: ToolTipDemo(),
    );
  }
}