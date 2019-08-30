import 'package:flutter/material.dart';

class EachScreen extends StatefulWidget {
  // 定义一个接收title
  // 从主页面传递过来的，
  // 然后根据传递过来的具体值显示在APP的标题栏和屏幕中间。
  
  String _title;
  EachScreen(this._title);
  @override
  _EachScreenState createState() => _EachScreenState();
}

class _EachScreenState extends State<EachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
