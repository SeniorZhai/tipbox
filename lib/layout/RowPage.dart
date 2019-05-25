import 'package:flutter/material.dart';
import './widget/ball.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Text("default"),
        Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(children: <Widget>[
              Ball(20, Colors.red),
              Ball(15, Colors.blue),
              Ball(30, Colors.yellow),
              Ball(10, Colors.cyan),
              Ball(25, Colors.orange),
            ])),
        Text("MainAxisAlignment.center"),
        Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Ball(20, Colors.red),
                  Ball(15, Colors.blue),
                  Ball(30, Colors.yellow),
                  Ball(10, Colors.cyan),
                  Ball(25, Colors.orange),
                ])),
        Text("MainAxisAlignment.end"),
        Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Ball(20, Colors.red),
                  Ball(15, Colors.blue),
                  Ball(30, Colors.yellow),
                  Ball(10, Colors.cyan),
                  Ball(25, Colors.orange),
                ])),
        Text("MainAxisAlignment.spaceAround"),
        Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Ball(20, Colors.red),
                  Ball(15, Colors.blue),
                  Ball(30, Colors.yellow),
                  Ball(10, Colors.cyan),
                  Ball(25, Colors.orange),
                ])),
        Text("MainAxisAlignment.spaceBetween"),
        Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Ball(20, Colors.red),
                  Ball(15, Colors.blue),
                  Ball(30, Colors.yellow),
                  Ball(10, Colors.cyan),
                  Ball(25, Colors.orange),
                ])),
        Text("MainAxisAlignment.spaceEvenly"),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Ball(20, Colors.red),
                Ball(15, Colors.blue),
                Ball(30, Colors.yellow),
                Ball(10, Colors.cyan),
                Ball(25, Colors.orange),
              ]),
        ),
        Text("CrossAxisAlignment.start"),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Ball(20, Colors.red),
                Ball(15, Colors.blue),
                Ball(30, Colors.yellow),
                Ball(10, Colors.cyan),
                Ball(25, Colors.orange),
              ]),
        ),
        Text("CrossAxisAlignment.end"),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Ball(20, Colors.red),
                Ball(15, Colors.blue),
                Ball(30, Colors.yellow),
                Ball(10, Colors.cyan),
                Ball(25, Colors.orange),
              ]),
        ),
      ]),
    );
  }
}
