import 'package:flutter/material.dart';
import './widget/ball.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topLeft,
          children: <Widget>[
            Ball(30, Colors.blue),
            Positioned(
              bottom: 20,
              child: Ball(35, Colors.red),
            )
          ],
        ),
      ),
    ));
  }
}
