import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/models/employee.dart';

abstract class AbstractCard {
  Employee employee;

  AbstractCard({required this.employee});

  Widget create() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Name: ${employee.name}'),
            build(),
            Text('Salário: ${employee.calculateSalary()}')
          ],
        ),
      ),
    );
  }

  Widget build();
}
