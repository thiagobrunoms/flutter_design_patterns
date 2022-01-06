import 'package:flutter_design_patterns/design_patterns/strategy/i_payment.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/pix.dart';

class PIXPaymentStrategy implements IPayment {
  PIX? pix;

  PIXPaymentStrategy({this.pix});

  @override
  Future<bool> pay() async {
    String? pixTo = pix?.value;
    print('Connecting to PIX Server');
    print('Paying through PIX');

    return true;
  }
}
