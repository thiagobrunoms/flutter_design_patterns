import 'package:flutter/material.dart';
import 'dart:math' as math;

abstract class Shape {
  Color color = Colors.white;

  Shape(this.color);

  Shape.clone(Shape shape) {
    color = shape.color;
  }

  void randomProperties() {
    color = Color.fromARGB(math.Random().nextInt(255),
        math.Random().nextInt(255), math.Random().nextInt(255), 1);
  }

  Shape clone();

  Widget render();
}
