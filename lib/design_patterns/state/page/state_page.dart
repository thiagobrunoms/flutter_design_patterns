import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/solicitation.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/accept_reject_state.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_context.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_state.dart';

class StatePage extends StatefulWidget {
  const StatePage({Key? key}) : super(key: key);

  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  DeliveryContext deliveryContext = DeliveryContext();

  @override
  void initState() {
    super.initState();

    deliveryContext.onNewState =
        AcceptRejectState(deliveryContext, Solicitation());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery'),
      ),
      body: StreamBuilder<DeliveryState>(
        stream: deliveryContext.deliveryStateStream,
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return snapshot.data!.render();
          }

          return Container();
        },
      ),
    );
  }
}
