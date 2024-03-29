// GridView网格列表组件的使用
import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GridView Widget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView 网格列表'),
            ),
            // body: GridView.count(
            //   // padding: const EdgeInsets.all(20.0), // 内边距
            //   padding: const EdgeInsets.fromLTRB(20, 20, 20, 0), // 内边距
            //   crossAxisSpacing: 10.0, // 网格之间的空隙
            //   crossAxisCount: 3, // 网格的列数 一行显示几个
            //   children: <Widget>[
            //     const Text('I LOVE CODE'),
            //     const Text('MARLONCHIU'),
            //     const Text('I LOVE CODE'),
            //     const Text('I LOVE CODE'),
            //   ],
            // )
            body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0, // 网格之间的间距（主/纵轴）
                crossAxisSpacing: 2.0, // 网格之间的间距（辅/横轴）
                childAspectRatio: 0.7  // 宽高比
              ),
              children: <Widget>[
                new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
              ],
            ),
      )
    );
  }
}
