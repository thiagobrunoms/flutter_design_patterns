import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/shape.dart';
import 'dart:math' as math;

class Circle extends Shape {
  double radius;

  Circle(Color color, this.radius) : super(color);

  Circle.clone(Shape shape, this.radius) : super.clone(shape);

  @override
  Shape clone() {
    return Circle.clone(this, radius);
  }

  @override
  void randomProperties() {
    super.randomProperties();
    radius = math.Random().nextInt(50).toDouble();
  }

  @override
  Widget render() {
    return SizedBox(
      height: 120,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: 2 * radius,
          width: 2 * radius,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(
            Icons.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
