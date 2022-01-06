import 'package:flutter/material.dart';

class Shape {
  Color color;
  double height;
  double width;

  Shape(this.color, this.height, this.width);

  factory Shape.initial() {
    return Shape(Colors.black, 150, 150);
  }

  factory Shape.copy(Shape shape) {
    return Shape(shape.color, shape.height, shape.width);
  }
}
