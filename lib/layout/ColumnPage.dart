import 'package:flutter/material.dart';
import './widget/ball.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Row(children: <Widget>[
        Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(children: <Widget>[
              Ball(20, Colors.red),
              Ball(15, Colors.blue),
              Ball(30, Colors.yellow),
              Ball(10, Colors.cyan),
              Ball(25, Colors.orange),
            ])),
        Container(
            margin: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Ball(20, Colors.red),
                  Ball(15, Colors.blue),
                  Ball(30, Colors.yellow),
                  Ball(10, Colors.cyan),
                  Ball(25, Colors.orange),
                ])),
        Container(
            margin: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Ball(20, Colors.red),
                  Ball(15, Colors.blue),
                  Ball(30, Colors.yellow),
                  Ball(10, Colors.cyan),
                  Ball(25, Colors.orange),
                ])),
        Container(
            margin: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Ball(20, Colors.red),
                  Ball(15, Colors.blue),
                  Ball(30, Colors.yellow),
                  Ball(10, Colors.cyan),
                  Ball(25, Colors.orange),
                ])),
        Container(
            margin: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Ball(20, Colors.red),
                  Ball(15, Colors.blue),
                  Ball(30, Colors.yellow),
                  Ball(10, Colors.cyan),
                  Ball(25, Colors.orange),
                ])),
      ]),
    );
  }
}
