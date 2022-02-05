import 'package:flutter_design_patterns/design_patterns/memento/entities/shape_entity.dart';
import 'package:flutter_design_patterns/design_patterns/memento/memento_state/i_memento.dart';
import 'package:flutter_design_patterns/design_patterns/memento/memento_state/memento.dart';

//Originator
class Editor {
  late Shape state;

  Editor() {
    state = Shape.initial();
  }

  //save
  IMemento makeSnapshot() {
    //The state is saved inside another class
    return Memento(state);
  }

  void restore(IMemento memento) {
    //Originator also restore state
    state = memento.getState();
  }
}
