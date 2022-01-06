import 'package:flutter_design_patterns/design_patterns/factory_method/models/employee.dart';

class TemporaryEmployee extends Employee {
  int months;

  TemporaryEmployee({required String name, required this.months})
      : super(name: name);

  @override
  double calculateSalary() {
    return baseSalary * months;
  }
}
