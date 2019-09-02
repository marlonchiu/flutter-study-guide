import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Tool Tips Demo')
      ),
      body: Center(
        child: Tooltip(
          message: '不要碰我，危险！',
          child: Image.network(
            'http://img1.imgtn.bdimg.com/it/u=1249276425,2840984170&fm=11&gp=0.jpg',
          ),
        ),
      ),
    );
  }
}