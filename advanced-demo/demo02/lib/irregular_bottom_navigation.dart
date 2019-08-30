import 'package:flutter/material.dart';
import 'each_screen.dart';

class IrregularBottomNavigation extends StatefulWidget {
  @override
  _IrregularBottomNavigationState createState() =>
      _IrregularBottomNavigationState();
}

class _IrregularBottomNavigationState extends State<IrregularBottomNavigation> {
  List<Widget> _eachScreen; // 创建视图数组
  int _index = 0; // 数组索引，通过改变索引值改变视图

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _eachScreen = List();
    _eachScreen..add(EachScreen('HOME'))..add(EachScreen('MENU'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachScreen[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachScreen('New Page');
          }));
        },
        tooltip: '增加',
        child: Icon(Icons.add, color: Colors.white),
      ),
      // 不规则按钮融合
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 底部导航栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
