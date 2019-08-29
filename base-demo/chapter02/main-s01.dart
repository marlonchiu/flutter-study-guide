// Text Widget 文本组件的使用

import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       title: 'Text Widget',
       home:Scaffold(
         body: Center(
          child: Text('诗歌创作是建筑人类精神世界的工程，中国白酒是中华传统文化的精粹。在中国历史的长河中，诗酒文化一直是中国传统文化的重要分支，丰富着中国人的精神生活。',
            textAlign:TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
            
          ),
       ),
    );
  }
}
