import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text('北京市昌平区龙泽地铁站', style: TextStyle(
              color: Colors.lightBlue,
              fontWeight: FontWeight.w500
            )),
            subtitle: new Text('tell:15846789651'),
            leading: new Icon(
              Icons.access_alarm,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(), // 分割线
          ListTile(
            title:new Text('北京市海淀区中国科技大学',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('胜宏宇:1513938888'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          ),
          new Divider(),
        ],
      ),
    );

    return MaterialApp(
        title: 'Column Widget',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Card 布局'),
            ),
            body: Center(
              child: card,
            )));
  }
}

