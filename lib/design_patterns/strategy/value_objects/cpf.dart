import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/value_object.dart';

class CPF extends ValueObject<String> {
  const CPF._(String value) : super(value);

  factory CPF.fromValue(String value) {
    if (_validate(value)) {
      return CPF._(value);
    } else {
      //Considerar o tipo Either do dartz
      throw Exception('O CPF está inválido!');
    }
  }

  //Pode estar em outro lugar...
  static bool _validate(String cpf) {
    return true;
  }
}
