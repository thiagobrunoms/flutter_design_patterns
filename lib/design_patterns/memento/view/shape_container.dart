import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/memento/entities/shape_entity.dart';

class ShapeContainer extends StatelessWidget {
  final Shape shape;

  const ShapeContainer({required this.shape, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: shape.width,
      height: shape.height,
      decoration: BoxDecoration(
        color: shape.color,
        shape: BoxShape.rectangle,
      ),
    );
  }
}
