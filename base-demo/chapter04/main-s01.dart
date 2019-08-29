import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: '导航演示一',
      home: FirstScreen(),
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('点击查看商品详情'),
          color: Colors.lightBlue,
          onPressed: () {
            Navigator.push(context,
              new MaterialPageRoute(builder: (context) => SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('商品详情页面'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('返回上一级'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )
      );
  }
}
