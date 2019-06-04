import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureRecognizerDemo extends StatefulWidget {
  @override
  _GestureRecognizerDemoState createState() => _GestureRecognizerDemoState();
}

class _GestureRecognizerDemoState extends State<GestureRecognizerDemo> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false;
  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recognizer"),
      ),
      body: Center(
        child: Text.rich(TextSpan(children: [
          TextSpan(
              text: "Click me",
              style: TextStyle(
                  color: _toggle ? Colors.blue : Colors.red, fontSize: 30.0),
              recognizer: _tapGestureRecognizer
                ..onTap = () {
                  setState(() {
                    _toggle = !_toggle;
                  });
                }),
          TextSpan(text: "Hello world")
        ])),
      ),
    );
  }
}
