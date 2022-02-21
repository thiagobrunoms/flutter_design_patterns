import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/i_shape.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/shape.dart';

class CircleSymbol implements IShape {
  @override
  Widget render() {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
    );
  }
}
