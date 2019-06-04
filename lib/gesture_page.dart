import 'package:flutter/material.dart';
import './list_item.dart';
import './gestrue/gesture_demo.dart';
import './gestrue/drag_demo.dart';
import './gestrue/scale_demo.dart';
import './gestrue/recognizer_demo.dart';
import './gestrue/both_direction_demo.dart';
import './gestrue/conflict_demo.dart';

class GesturePage extends StatelessWidget {
  const GesturePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gesture"),
        ),
        body: ListView(children: <Widget>[
          ListItem(
            title: 'Demo',
            page: GestureDetectorDemo(),
          ),
          ListItem(title: "drag", page: DragDemo()),
          ListItem(title: "scale", page: ScaleDemo()),
          ListItem(title: "recognizer", page: GestureRecognizerDemo()),
          ListItem(
            title: "both",
            page: BothDirectionDemo(),
          ),
          ListItem(
            title: "Conflict",
            page: GestureConflictDemo(),
          )
        ]),
      ),
    );
  }
}
