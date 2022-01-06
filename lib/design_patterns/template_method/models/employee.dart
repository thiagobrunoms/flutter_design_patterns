import 'package:flutter_design_patterns/design_patterns/template_method/models/report.dart';

abstract class Employee {
  String name;
  double baseSalary;
  int numberOfSales;

  Employee(
      {required this.name, required this.numberOfSales, this.baseSalary = 50});

  Report generateReport() {
    double gains = calculateGains();
    double clientsMean = calculateClientsMean();
    String message = formatFinalMessage();

    return Report(
        date: DateTime.now(),
        gains: gains,
        numberOfClients: clientsMean,
        message: message);
  }

  double calculateClientsMean() {
    return numberOfSales / 30;
  }

  double calculateGains() {
    return calculateSalary() * numberOfSales;
  }

  double calculateSalary();

  String formatFinalMessage();
}
