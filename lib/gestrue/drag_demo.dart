import 'package:flutter/material.dart';

class DragDemo extends StatefulWidget {
  @override
  _DragDemoState createState() => _DragDemoState();
}

class _DragDemoState extends State<DragDemo> {
  double _top = 0.0;
  double _left = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag demo"),
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
              onPanUpdate: (DragUpdateDetails e) {
                print(e.delta.dy);
                print(e.delta.dx);
                setState(() {
                  _left += e.delta.dx;
                  _top += e.delta.dy;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
