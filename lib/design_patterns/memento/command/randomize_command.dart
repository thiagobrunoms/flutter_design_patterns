import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/memento/command/i_command.dart';
import 'package:flutter_design_patterns/design_patterns/memento/memento_state/i_memento.dart';
import 'package:flutter_design_patterns/design_patterns/memento/memento_state/editor_originator.dart';
import 'dart:math' as math;

class RandomizeCommand implements ICommand {
  Editor editor;
  late IMemento _backup;
  late IMemento _repeat;

  RandomizeCommand(this.editor) {
    _backup = editor.makeSnapshot();
    _repeat = _backup;
  }

  @override
  void execute() {
    var shape = editor.state;
    shape.color = Color.fromARGB(math.Random().nextInt(255),
        math.Random().nextInt(255), math.Random().nextInt(255), 1);
    shape.height = math.Random().nextDouble() * 255;
    shape.width = math.Random().nextDouble() * 255;
    _repeat = editor.makeSnapshot();
  }

  @override
  void undo() {
    editor.restore(_backup);
  }

  @override
  void redo() {
    print('redoing...');
    editor.restore(_repeat);
  }
}
