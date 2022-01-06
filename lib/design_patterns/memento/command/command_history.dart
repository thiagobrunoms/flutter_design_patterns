import 'dart:collection';

import 'package:flutter_design_patterns/design_patterns/memento/command/i_command.dart';

class CommandHistory {
  final ListQueue<ICommand> _commandList = ListQueue<ICommand>();
  final ListQueue<ICommand> _undoCommandList = ListQueue<ICommand>();

  bool get hasCommands => _commandList.isNotEmpty;
  bool get hasUndoneCommands => _undoCommandList.isNotEmpty;

  void add(ICommand command) {
    _commandList.add(command);
  }

  void undo() {
    if (hasCommands) {
      var command = _commandList.removeLast();
      command.undo();
      _undoCommandList.add(command);
    }
  }

  void redo() {
    if (hasUndoneCommands) {
      var command = _undoCommandList.removeLast();
      command.redo();
      add(command);
    }
  }
}
