import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/i_shape.dart';

class RectanbleSymbol implements IShape {
  @override
  Widget render() {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.red,
      ),
    );
  }
}
