// Container 容器组件的使用

import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       title: 'Container Widget',
       home:Scaffold(
         body: Center(
          child: Container(
            child: new Text('Hello Flutter',
              style: TextStyle(
                fontSize: 40.0,
                color: Color.fromARGB(255,255, 125, 125)
              ),
            ),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            // color: Colors.lightBlue,
            padding: EdgeInsets.fromLTRB(20.0, 100.0, 0.0, 0.0),
            margin: EdgeInsets.all(10.0),
            decoration:new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]
              ),
              border: Border.all(width: 5.0,color:Colors.red),
            ),
          )
          ),
       ),
    );
  }
}
