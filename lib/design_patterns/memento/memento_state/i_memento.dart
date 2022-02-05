import 'package:flutter_design_patterns/design_patterns/memento/entities/shape_entity.dart';

abstract class IMemento<T> {
  T getState();
}
