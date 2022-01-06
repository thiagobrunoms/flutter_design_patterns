import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/credit_card.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/i_payment.dart';

class CredtiCardPaymentStrategy implements IPayment {
  CreditCard? entity;

  CredtiCardPaymentStrategy({this.entity});

  @override
  Future<bool> pay() async {
    print('Connecting to Credit Card Server');
    print('Paying through Credit Card');

    return true;
  }
}
