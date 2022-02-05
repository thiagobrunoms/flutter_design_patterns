import 'package:flutter_design_patterns/design_patterns/memento/entities/shape_entity.dart';
import 'package:flutter_design_patterns/design_patterns/memento/memento_state/i_memento.dart';

//Memento must be immutable (read-only)
//There are no setters
class Memento implements IMemento<Shape> {
  late Shape _state;

  Memento(Shape shape) {
    _state = Shape.copy(shape);
  }

  @override
  Shape getState() {
    return _state;
  }
}
