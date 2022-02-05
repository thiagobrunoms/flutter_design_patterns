import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/shape.dart';
import 'dart:math' as math;

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(Color color, this.height, this.width) : super(color);

  Rectangle.clone(Rectangle rectangle, this.height, this.width)
      : super.clone(rectangle);

  @override
  Shape clone() {
    return Rectangle.clone(this, height, width);
  }

  @override
  void randomProperties() {
    super.randomProperties();
    width = math.Random().nextInt(100).toDouble();
    height = math.Random().nextInt(100).toDouble();
  }

  @override
  Widget render() {
    return SizedBox(
      height: 120,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: width,
          height: height,
          decoration: BoxDecoration(color: color, shape: BoxShape.rectangle),
          child: const Icon(Icons.share, color: Colors.white),
        ),
      ),
    );
  }
}
