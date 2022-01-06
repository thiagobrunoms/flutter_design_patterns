import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_button.dart';

class MaterialButton implements IButton {
  final String text;
  final Function() callback;

  MaterialButton({required this.text, required this.callback});

  @override
  Widget build() {
    return Container(
      width: 100,
      height: 50,
      child: ElevatedButton(
        child: Text(text),
        onPressed: callback,
      ),
    );
  }
}
