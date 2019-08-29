import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Column Widget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Stack 层叠布局'),
            ),
            body: Stack(
              alignment: const FractionalOffset(0.5, 0.8),  // alignment  控制层叠的位置的
              children: <Widget>[
                new CircleAvatar(
                  backgroundImage: new NetworkImage('http://blogimages.jspang.com/blogtouxiang1.jpg'),
                  radius: 100.0,
                ),
                new Container(
                  child: Text('技术胖'),
                  padding: const EdgeInsets.all(5.0),
                  decoration: new BoxDecoration(
                    color: Colors.lightBlue
                  ),
                  width: 100.0,
                  height: 50.0,
                )
              ],
            )
      )
    );
  }
}


/**
// 灵活布局 自适应的
Expanded(
  child: 
),
**/