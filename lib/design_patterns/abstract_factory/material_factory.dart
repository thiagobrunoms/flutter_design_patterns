import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_progress_indicator.dart';

import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_button.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/material_button.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/material_progress_indicator.dart';

import 'i_widgets_factory.dart';

class MaterialFactory implements IWidgetFactory {
  @override
  IButton createButton(String text, Function() callback) {
    return MaterialButton(text: text, callback: callback);
  }

  @override
  IProgressIndicator createProgressIndicator() {
    return MaterialProgressIndicator();
  }
}
