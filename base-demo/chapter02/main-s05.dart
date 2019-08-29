// ListView 列表组件的使用
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return MaterialApp(
        title: 'ListView 列表',
        home: Scaffold(
          appBar: AppBar(
            title: Text('ListView Widget Demo'),
          ),
          body: new ListView(
            children: <Widget>[
              // new ListTile(
              //   leading: new Icon(Icons.access_alarm),
              //   title: new Text('access_alarm'),
              // ),
              // new ListTile(
              //   leading: new Icon(Icons.accessible_forward),
              //   title: new Text('accessible_forward'),
              // ),
              // new ListTile(
              //   leading: new Icon(Icons.ac_unit),
              //   title: new Text('ac_unit'),
              // ),
              new Image.network(
                'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=668741117,1837221914&fm=26&gp=0.jpg',
                width: 200.0,
                height: 300.0,
              ),
              new Image.network(
                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3989720687,3554822860&fm=26&gp=0.jpg',
                width: 200.0,
                height: 300.0,
              ),
              new Image.network(
                'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4001424133,1172642604&fm=26&gp=0.jpg',
              ),
            ],
          )
        )
      );
    }
}
