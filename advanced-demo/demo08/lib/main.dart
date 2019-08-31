import 'package:flutter/material.dart';
// import 'expansion_tile_demo.dart';
import 'expansion_panel_list_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 展开闭合案例效果',
      theme: ThemeData.dark(),
      home: Scaffold(
        // body: ExpansionTileDemo(),
        body: ExpansionPanelListDemo(),
      ),
    );
  }
}