import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Row Widget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Row 水平布局'),
            ),
            body: new Row(
              children: <Widget>[
                new RaisedButton(
                  onPressed: (){

                  },
                  color: Colors.redAccent,
                  child: Text('红色按钮'),
                ),
                Expanded(
                  child: new RaisedButton(
                    onPressed: (){

                    },
                    color: Colors.greenAccent,
                    child: Text('绿色按钮'),
                  ),
                ),
                new RaisedButton(
                  onPressed: (){

                  },
                  color: Colors.blueAccent,
                  child: Text('蓝色按钮'),
                ),
              ],
            ),
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