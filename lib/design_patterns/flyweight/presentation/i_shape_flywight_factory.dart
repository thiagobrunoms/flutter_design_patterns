import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/models/user.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/i_shape.dart';
import 'package:flutter_design_patterns/design_patterns/flyweight/presentation/shape_factory.dart';

class IShapeFlyweightFactory {
  Map<ShapeType, IShape> shapes = {};
  ShapeFactory? factory = ShapeFactory();

  IShape? buildShape(User user) {
    print('Entrou: tamanho ${shapes.length}');
    if (user.isSuperUser) {
      if (!shapes.containsKey(ShapeType.Circle)) {
        shapes[ShapeType.Circle] = ShapeFactory.getShape(ShapeType.Circle);
      }

      return shapes[ShapeType.Circle];
    } else {
      if (!shapes.containsKey(ShapeType.Rectangle)) {
        shapes[ShapeType.Rectangle] =
            ShapeFactory.getShape(ShapeType.Rectangle);
      }

      return shapes[ShapeType.Rectangle];
    }
  }
}
