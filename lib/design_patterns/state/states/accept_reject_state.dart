import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/solicitation.dart';
import 'package:flutter_design_patterns/design_patterns/state/models/solicitation_response.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/collect_state.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_context.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_state.dart';
import 'package:flutter_design_patterns/design_patterns/state/usecases/accept_reject_usecase.dart';
import 'package:flutter_design_patterns/design_patterns/state/usecases/usecase.dart';

class AcceptRejectState extends DeliveryState {
  late Usecase usecase;
  late SolicitationResponse solicitationResponse;
  AcceptRejectState(DeliveryContext deliveryContext, Solicitation solicitation)
      : super(deliveryContext);

  @override
  Future<void> execute() async {
    usecase = AcceptRejectUsecase();
    Solicitation solicitation =
        await usecase.execute(param: solicitationResponse);
    deliveryContext.onNewState = CollectState(deliveryContext, solicitation);
  }

  @override
  Widget render() {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              solicitationResponse = SolicitationResponse(accept: true);
              execute();
            },
            child: const Text('Accept')),
        ElevatedButton(
            onPressed: () {
              solicitationResponse = SolicitationResponse(accept: false);
              execute();
            },
            child: const Text('Reject')),
      ],
    );
  }
}
