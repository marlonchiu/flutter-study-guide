import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  // 定义变量 颜色和位置不一样

  final Offset offset;
  final Color widgetColor;
  // 调用父类的方法  无名无参的
  const DraggableWidget({Key key, this.offset, this.widgetColor})
      : super(key: key);
  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(  // 返回位置控件
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.widgetColor,  // 传递数据 颜色
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor,
        ),
        // 当拖动时候的样子
        feedback: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor.withOpacity(0.5),
        ),
        // 当拖动释放的时候
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}
