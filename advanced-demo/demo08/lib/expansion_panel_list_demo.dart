import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  var currentPanelIndex = -1;
  List<int> mList; //组成一个int类型数组，用来控制索引
  List<ExpandStateBean> expandStateList; //开展开的状态列表， ExpandStateBean是自定义的类

  // 构造方法，调用这个类的时候自动执行
  _ExpansionPanelListDemoState() {
    mList = new List();
    expandStateList = new List();

    //遍历生成两个List进行赋值
    for (int i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpandStateBean(i, false));
    }
  }

  // 修改展开与闭合的内部方法
  _setCurrentIndex(int index, isExpand) {
    setState(() {
      expandStateList.forEach((item) {
        if (item.index == index) {
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("expansion panel list")),
      //加入可滚动组件  ExpansionPanelList必须放在可以滚动的控件中
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          // 交互回调属性，里边是个匿名函数
          expansionCallback: (index, bol) {
            // 调用内部方法
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index) {
            return ExpansionPanel(
                headerBuilder: (context, isExpand) {
                  return ListTile(
                    title: Text('This is No. $index'),
                  );
                },
                body: ListTile(title: Text('expansion no.$index')),
                isExpanded: expandStateList[index].isOpen
              );
          }).toList(),
        ),
      ),
    );
  }
}

// 自定义扩展状态的类
class ExpandStateBean {
  var isOpen;
  var index;
  ExpandStateBean(this.index, this.isOpen);
}

/***
ExpansionPanelList 常用属性
expansionCallback:点击和交互的回掉事件，有两个参数，第一个是触发动作的索引，第二个是布尔类型的触发值。
children:列表的子元素，里边多是一个List数组
 */
