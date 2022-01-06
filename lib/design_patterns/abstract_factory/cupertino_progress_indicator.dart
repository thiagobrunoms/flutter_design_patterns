import 'package:flutter/cupertino.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_progress_indicator.dart';

class MyCupertinoProgressIndicator implements IProgressIndicator {
  @override
  Widget build() {
    return Container(
      width: 200,
      height: 200,
      child: const CupertinoActivityIndicator(),
    );
  }
}
