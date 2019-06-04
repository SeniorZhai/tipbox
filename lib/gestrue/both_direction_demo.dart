import 'package:flutter/material.dart';

class BothDirectionDemo extends StatefulWidget {
  @override
  _BothDirectionDemoState createState() => _BothDirectionDemoState();
}

class _BothDirectionDemoState extends State<BothDirectionDemo> {
  double _top = 0.0;
  double _left = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Both Direction"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(
                child: Text("A"),
              ),
              onVerticalDragUpdate: (DragUpdateDetails e) {
                setState(() {
                  _top += e.delta.dy;
                });
              },
              onHorizontalDragUpdate: (DragUpdateDetails e) {
                setState(() {
                  _left += e.delta.dx;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
