import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Column Widget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Column 垂直布局'),
            ),
            body: Center(
              child: Column(
              children: <Widget>[
                Text('I am JSPang'),
                Expanded(child: Text('my website is jspang.com'),),
                Text('I love coding')
              ],
              crossAxisAlignment: CrossAxisAlignment.start,  // 副轴
              mainAxisAlignment: MainAxisAlignment.center, // 主轴
               // start 左对齐 end 右对齐 center居中对齐（默认值）
            ),
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