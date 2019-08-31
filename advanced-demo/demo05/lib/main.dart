import 'package:flutter/material.dart';
import 'keep_alive_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 保持页面状态',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        body: KeepAliveDemo(),
      ),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}
/*
with是dart的关键字，意思是混入的意思，
就是说可以将一个或者多个类的功能添加到自己的类无需继承这些类，
避免多重继承导致的问题。
SingleTickerProviderStateMixin 主要是我们初始化TabController时，
需要用到vsync ，垂直属性，然后传递this
*/

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  // 重写被释放的方法，只释放TabController
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(  // 切换tab 的显示
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_bike)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_boat)),
            Tab(icon: Icon(Icons.directions_car)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          // Text('1111'),
          // Text('2222'),
          // Text('3333'),
          // Text('4444'),
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}
