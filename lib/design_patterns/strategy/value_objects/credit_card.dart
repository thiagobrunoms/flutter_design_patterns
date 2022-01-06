import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/value_object.dart';

class CreditCard extends ValueObject<String> {
  CreditCard(String number) : super(number);
}
