import 'package:flutter/material.dart';
import 'irregular_bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 不规则导航栏制作',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: IrregularBottomNavigation(),
    );
  }
}
