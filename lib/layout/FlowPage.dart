import 'dart:math';

import 'package:flutter/material.dart';
import './widget/ball.dart';

class FlowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flow'),
      ),
      body: Flow(
        delegate: MyFlowDelegate(),
        children: <Widget>[
          Ball(80, Colors.cyan),
          Ball(70, Colors.purple),
          Ball(90, Colors.grey),
          Ball(50, Colors.red),
          Ball(10, Colors.green),
          Ball(20, Colors.black),
          Ball(40, Colors.blue),
          Ball(50, Colors.pink),
          Ball(100, Colors.orange),
        ],
      ),
    );
  }
}

class MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = 0.0;
    var y = 0.0;
    var maxHeight = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x;
      var h = context.getChildSize(i).height;
      if (w < context.size.width) {
        // 小于宽之间排在同一行
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x = w;
        maxHeight = max(maxHeight, h);
      } else {
        x = 0.0;
        y += maxHeight;
        //绘制子widget(有优化)
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i).width;
      }
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return super.getSize(constraints);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
