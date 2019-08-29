// ListView 列表组件的使用
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListView 列表组件',
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView 列表组件'),
            ),
            body: MyList(),
            // body: new ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: <Widget>[
            //     new Image.network(
            //       'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=668741117,1837221914&fm=26&gp=0.jpg',
            //       width: 150.0,
            //       height: 200.0,
            //     ),
            //     new Image.network(
            //       'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3989720687,3554822860&fm=26&gp=0.jpg',
            //       width: 150.0,
            //       height: 200.0,
            //     ),
            //     new Image.network(
            //       'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4001424133,1172642604&fm=26&gp=0.jpg',
            //       width: 150.0,
            //       height: 200.0,
            //     ),
            //   ],
            // )
          )
        );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '列表模块',
      home: Scaffold(
        body: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Image.network(
              'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=668741117,1837221914&fm=26&gp=0.jpg',
              width: 150.0,
              height: 200.0,
            ),
            new Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3989720687,3554822860&fm=26&gp=0.jpg',
              width: 150.0,
              height: 200.0,
            ),
            new Image.network(
              'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4001424133,1172642604&fm=26&gp=0.jpg',
              width: 150.0,
              height: 200.0,
            ),
            new Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=371636401,635359876&fm=26&gp=0.jpg',
              width: 150.0,
              height: 200.0,
            ),
            new Image.network(
              'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=205982258,782466014&fm=26&gp=0.jpg',
              width: 150.0,
              height: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
