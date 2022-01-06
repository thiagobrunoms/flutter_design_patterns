import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/email.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/pix.dart';

class PIXEmail extends PIX {
  Email email;

  PIXEmail(this.email) : super(email.value);
}
