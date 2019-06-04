import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatefulWidget {
  @override
  _GestureDetectorDemoState createState() => _GestureDetectorDemoState();
}

class _GestureDetectorDemoState extends State<GestureDetectorDemo> {
  String _operation = "No Gesture detected!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gesture Demo"),
        ),
        body: Center(
          child: GestureDetector(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              width: 200,
              height: 100,
              child: Text(_operation,
                  style: TextStyle(fontSize: 14.0, color: Colors.white)),
            ),
            onTap: () => {
                  setState(() {
                    _operation = "Tap";
                  })
                },
            onDoubleTap: () => {
                  setState(() {
                    _operation = "Double Tap";
                  })
                },
            onLongPress: () => {
                  setState(() {
                    _operation = "Long Press";
                  })
                },
          ),
        ));
  }
}
