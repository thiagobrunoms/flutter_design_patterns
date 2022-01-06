import 'package:flutter_design_patterns/design_patterns/template_method/models/employee.dart';

class SeasonalEmployee extends Employee {
  int numberOfSeasons;

  SeasonalEmployee(
      {required String name,
      required int numberOfSales,
      required this.numberOfSeasons})
      : super(name: name, numberOfSales: numberOfSales);

  @override
  double calculateSalary() {
    return baseSalary * numberOfSeasons;
  }

  @override
  String formatFinalMessage() {
    return 'Relatório Funcionário Sazonal';
  }
}
