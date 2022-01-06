import 'package:flutter_design_patterns/design_patterns/factory_method/models/employee.dart';

class SeasonalEmployee extends Employee {
  int numberOfSeasons;

  SeasonalEmployee({required String name, required this.numberOfSeasons})
      : super(name: name);

  @override
  double calculateSalary() {
    return baseSalary * numberOfSeasons;
  }
}
