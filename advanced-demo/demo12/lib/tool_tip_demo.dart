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
          message: '不要惦记我啊！',
          child: Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557744149&di=f68af941c41b28a7fd7484165f9c77c4&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201512%2F12%2F20151212193107_ujGZV.jpeg'
          ),
        ),
      ),
    );
  }
}