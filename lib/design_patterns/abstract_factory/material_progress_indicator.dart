import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_progress_indicator.dart';

class MaterialProgressIndicator implements IProgressIndicator {
  @override
  Widget build() {
    return Container(
        width: 50, height: 50, child: const CircularProgressIndicator());
  }
}
