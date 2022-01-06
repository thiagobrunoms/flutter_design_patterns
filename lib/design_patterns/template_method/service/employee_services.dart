import 'package:flutter_design_patterns/design_patterns/template_method/models/employee.dart';
import 'package:flutter_design_patterns/design_patterns/template_method/models/seasonal_employee.dart';
import 'package:flutter_design_patterns/design_patterns/template_method/models/temporary_employee.dart';

class EmployeeService {
  Future<List<Employee>> loadSeasonalEmployees() async {
    return [
      SeasonalEmployee(name: 'Thiago', numberOfSeasons: 3, numberOfSales: 10),
      SeasonalEmployee(name: 'Bruno', numberOfSeasons: 3, numberOfSales: 8),
      SeasonalEmployee(name: 'Sales', numberOfSeasons: 3, numberOfSales: 12),
    ];
  }

  Future<List<Employee>> loadTemporalEmployees() async {
    return [
      TemporaryEmployee(name: 'João', months: 2, numberOfSales: 10),
      TemporaryEmployee(name: 'Silvio', months: 1, numberOfSales: 9),
      TemporaryEmployee(name: 'Maria', months: 4, numberOfSales: 5)
    ];
  }
}
