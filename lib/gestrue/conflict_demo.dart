import 'package:flutter/material.dart';

class GestureConflictDemo extends StatefulWidget {
  @override
  _GestureConflictDemoState createState() => _GestureConflictDemoState();
}

class _GestureConflictDemoState extends State<GestureConflictDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conflict"),
      ),
      body: Stack(
        children: <Widget>[],
      ),
    );
  }
}
