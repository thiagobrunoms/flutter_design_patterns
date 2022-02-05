import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/state/states/delivery_context.dart';

abstract class DeliveryState {
  DeliveryContext deliveryContext;

  DeliveryState(this.deliveryContext);

  void nextState(DeliveryState newState) {
    deliveryContext.onNewState = newState;
  }

  Future<void> execute();

  Widget render();
}
