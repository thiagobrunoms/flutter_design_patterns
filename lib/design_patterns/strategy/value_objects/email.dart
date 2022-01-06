import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/value_object.dart';

class Email extends ValueObject<String> {
  Email._(String value) : super(value);

  factory Email.fromValue(String value) {
    if (value.isNotEmpty) {
      return Email._(value);
    } else {
      throw Exception('O email não pode ser vazio');
    }
  }
}
