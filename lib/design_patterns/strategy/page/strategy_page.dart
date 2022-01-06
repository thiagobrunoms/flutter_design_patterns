import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/i_payment.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/page/widgets/login_button_widget.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/payment_service.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/strategies/credit_card_payment_strategy.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/strategies/pix_payment_strategy.dart';
import 'package:flutter_design_patterns/design_patterns/strategy/value_objects/pix.dart';

class StrategyPage extends StatefulWidget {
  const StrategyPage({Key? key}) : super(key: key);

  @override
  _StrategyPageState createState() => _StrategyPageState();
}

class _StrategyPageState extends State<StrategyPage> {
  late IPayment pixPayment;
  late IPayment creditCardPayment;
  IPayment? selectedPayment;
  late PIX pix;
  late PaymentService paymentService;

  @override
  void initState() {
    super.initState();

    paymentService = PaymentService();
    pixPayment = PIXPaymentStrategy();
    creditCardPayment = CredtiCardPaymentStrategy();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forma de Pagamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('PIX'),
                Radio<IPayment>(
                    value: pixPayment,
                    groupValue: selectedPayment,
                    onChanged: (IPayment? iPayment) {
                      setPayment(iPayment);
                    }),
              ],
            ),
            Row(
              children: [
                const Text('Cartão de Credito'),
                Radio<IPayment>(
                    value: creditCardPayment,
                    groupValue: selectedPayment,
                    onChanged: (IPayment? iPayment) {
                      setPayment(iPayment);
                    }),
              ],
            ),
            LoginButtonWidget(
              'Pagar',
              color: Colors.green,
              callback: firePay,
            )
          ],
        ),
      ),
    );
  }

  void setPayment(IPayment? iPayment) {
    setState(() {
      selectedPayment = iPayment;
      paymentService.paymentStrategy = iPayment;
    });
  }

  Future<void> firePay() async {
    await paymentService.pay();
  }
}
