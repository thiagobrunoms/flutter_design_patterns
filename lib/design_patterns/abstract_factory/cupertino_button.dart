import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_button.dart';

class MyCupertinoButton implements IButton {
  final String text;
  final Function() callback;

  MyCupertinoButton({required this.text, required this.callback});

  @override
  Widget build() {
    return Container(
      width: 100,
      height: 100,
      child: CupertinoButton(child: Text(text), onPressed: callback),
    );
  }
}
