import 'package:flutter_design_patterns/design_patterns/memento/entities/shape_entity.dart';
import 'package:flutter_design_patterns/design_patterns/memento/memento_state/i_memento.dart';

class Memento implements IMemento {
  late Shape _state;

  Memento(Shape shape) {
    _state = Shape.copy(shape);
  }

  @override
  Shape getState() {
    return _state;
  }
}
