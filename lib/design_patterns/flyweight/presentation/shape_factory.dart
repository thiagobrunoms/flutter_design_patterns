import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/circle_symbol.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/i_shape.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/rectangle_symbol.dart';
import 'package:flutter_design_patterns/design_patterns/prototype/reactangle.dart';

enum ShapeType { Rectangle, Circle }

class ShapeFactory {
  static IShape getShape(ShapeType shapeType) {
    switch (shapeType) {
      case ShapeType.Rectangle:
        return RectanbleSymbol();
      case ShapeType.Circle:
        return CircleSymbol();
      default:
        throw Exception('Invalid shapetype');
    }
  }
}
