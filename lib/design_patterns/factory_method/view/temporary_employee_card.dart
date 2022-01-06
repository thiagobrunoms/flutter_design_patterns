import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/models/employee.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/view/abstract_card.dart';

class TemporaryEmployeeCard extends AbstractCard {
  TemporaryEmployeeCard(Employee employee) : super(employee: employee);

  @override
  Widget build() {
    return const Icon(Icons.timelapse);
  }
}
