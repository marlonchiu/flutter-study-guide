import 'package:flutter/material.dart';
import 'custom_route.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstPage', style: TextStyle(fontSize: 36.0)),
        elevation: 0.0, // 页面融合效果 默认值 4.0
        backgroundColor:  Colors.blue,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next, color: Colors.white, size: 64.0),
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (BuildContext context) {
            //       return SecondPage();
            // }));
            // 引入动画
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('SecondPage', style: TextStyle(fontSize: 36.0)),
        leading: Container(), // 居中显示
        elevation: 0.0, // 页面融合效果 默认值 4.0
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_before, color: Colors.white, size: 64.0),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
