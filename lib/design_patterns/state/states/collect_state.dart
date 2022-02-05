import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/solicitation.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/deliver_state.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_context.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_state.dart';
import 'package:flutter_design_patterns/design_patterns/state/usecases/collect_usecase.dart';
import 'package:flutter_design_patterns/design_patterns/state/usecases/usecase.dart';

class CollectState extends DeliveryState {
  late Usecase usecase;
  Solicitation solicitation;
  CollectState(DeliveryContext deliveryContext, this.solicitation)
      : super(deliveryContext);

  @override
  Future<void> execute() async {
    usecase = CollectUsecase();
    usecase.execute();
    deliveryContext.onNewState = DeliverState(deliveryContext, solicitation);
  }

  @override
  Widget render() {
    List<Widget> addresses =
        solicitation.addresses.map(_solicitationToWidget).toList();

    addresses.add(
        ElevatedButton(onPressed: execute, child: const Text('Prosseguir')));

    return Column(
      children: addresses,
    );
  }

  Widget _solicitationToWidget(String address) {
    return Text(address);
  }
}
