import 'dart:async';

import 'package:flutter_design_patterns/design_patterns/state/models/solicitation_response.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/accept_reject_state.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_state.dart';

class DeliveryContext {
  late StreamController<DeliveryState> onNewStateController;
  late DeliveryState deliveryState;

  DeliveryContext() {
    onNewStateController = StreamController<DeliveryState>();
  }

  Stream<DeliveryState> get deliveryStateStream => onNewStateController.stream;

  set onNewState(DeliveryState deliveryState) {
    this.deliveryState = deliveryState;
    onNewStateController.sink.add(this.deliveryState);
  }
}
