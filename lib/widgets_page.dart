import 'package:flutter/material.dart';
import './list_item.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Widgets"),
        ),
        body: ListView(children: <Widget>[]),
      ),
    );
  }
}
