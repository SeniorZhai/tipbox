import 'package:flutter/material.dart';

class ScaleDemo extends StatefulWidget {
  @override
  _ScaleDemoState createState() => _ScaleDemoState();
}

class _ScaleDemoState extends State<ScaleDemo> {
  double _width = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag demo"),
      ),
      body: Center(
        child: GestureDetector(
          child: Image.network(
            "http://b.hiphotos.baidu.com/image/h%3D300/sign=48bfbde29222720e64cee4fa4bca0a3a/4a36acaf2edda3cc3d91a0a00be93901213f923c.jpg",
            width: _width,
          ),
          onScaleUpdate: (ScaleUpdateDetails details) {
            setState(() {
              _width = 200 * details.scale.clamp(.8, 10.0);
            });
          },
        ),
      ),
    );
  }
}
