import 'package:flutter/material.dart';
import './widget/ball.dart';

class FlexPage extends StatelessWidget {
  const FlexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flex"),
      ),
      body: Column(children: <Widget>[
        Container(
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 10.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30.0,
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 20.0,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
