// Image 图片组件的使用

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
            child: new Image.network(
              'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1619845112,87007065&fm=179&app=42&f=JPEG?w=121&h=140',
              // fit: BoxFit.contain  // fill cover contain fitWidth fitHeight
              // 图片重复
              // repeat: ImageRepeat.noRepeat, // repeatX repeatY repeat noRepeat
              // 图片混合
              color: Colors.lightBlue,
              colorBlendMode: BlendMode.darken,
            
            ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          )
          ),
       ),
    );
  }
}
