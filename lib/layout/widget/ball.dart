import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  double _size;
  Color _color;

  Ball(double size, Color color) {
    this._size = size;
    this._color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_size / 2), color: _color),
    );
  }
}
