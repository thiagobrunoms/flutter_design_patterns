import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/value_object.dart';

abstract class PIX extends ValueObject<String> {
  PIX(String value) : super(value);
}
