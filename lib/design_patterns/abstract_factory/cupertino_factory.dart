import 'package:flutter_design_patterns/design_patterns/abstract_factory/cupertino_button.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/cupertino_progress_indicator.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_progress_indicator.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_button.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_widgets_factory.dart';

class CupertinoFactory implements IWidgetFactory {
  @override
  IButton createButton(String text, Function() callback) {
    return MyCupertinoButton(text: text, callback: callback);
  }

  @override
  IProgressIndicator createProgressIndicator() {
    return MyCupertinoProgressIndicator();
  }
}
