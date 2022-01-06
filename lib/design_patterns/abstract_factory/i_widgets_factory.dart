import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_button.dart';
import 'package:flutter_design_patterns/design_patterns/abstract_factory/i_progress_indicator.dart';

abstract class IWidgetFactory {
  IButton createButton(String text, Function() callback);
  IProgressIndicator createProgressIndicator();
}
