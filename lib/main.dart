import 'package:flutter/material.dart';
import './widgets_page.dart';
import './layout_page.dart';
import './list_item.dart';
import './gesture_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromRGBO(216, 70, 86, 1.0)),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top box"),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: "Widgets",
            page: WidgetsPage(),
          ),
          ListItem(
            title: "Layout",
            page: LayoutPage(),
          ),
          ListItem(
            title: "Gesture",
            page: GesturePage(),
          )
        ],
      ),
    );
  }
}
