import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/solicitation.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_context.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_state.dart';

class DeliverState extends DeliveryState {
  Solicitation solicitation;

  DeliverState(DeliveryContext deliveryContext, this.solicitation)
      : super(deliveryContext);

  @override
  Future<void> execute() {
    // TODO: implement execute
    throw UnimplementedError();
  }

  @override
  Widget render() {
    return const Text('Saindo para entrega!');
  }
}
