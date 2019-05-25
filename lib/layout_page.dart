import 'package:flutter/material.dart';
import './list_item.dart';
import './layout/RowPage.dart';
import './layout/ColumnPage.dart';
import './layout/FlexPage.dart';
import './layout/FlowPage.dart';
import './layout/StackPage.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Widgets"),
        ),
        body: ListView(children: <Widget>[
          ListItem(title: "Row", page: RowPage()),
          ListItem(title: "Column", page: ColumnPage()),
          ListItem(title: "Flex", page: FlexPage()),
          ListItem(title: "Flow", page: FlowPage()),
          ListItem(title: "Stack", page: StackPage())
        ]),
      ),
    );
  }
}
