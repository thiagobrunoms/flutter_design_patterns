import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/cpf.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/pix.dart';

class PIXCPF extends PIX {
  CPF cpf;

  PIXCPF(this.cpf) : super(cpf.value);
}
