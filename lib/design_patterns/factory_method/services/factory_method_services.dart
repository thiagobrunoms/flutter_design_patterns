import 'package:flutter_design_patterns/design_patterns/factory_method/models/employee.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/models/seasonal_employee.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/models/temporary_employee.dart';

class FMServices {
  Future<List<Employee>> loadSeasonalEmployees() async {
    return [
      SeasonalEmployee(name: 'Thiago', numberOfSeasons: 3),
      SeasonalEmployee(name: 'Bruno', numberOfSeasons: 2),
      SeasonalEmployee(name: 'Sales', numberOfSeasons: 6),
    ];
  }

  Future<List<Employee>> loadTemporalEmployees() async {
    return [
      TemporaryEmployee(name: 'João', months: 2),
      TemporaryEmployee(name: 'Silvio', months: 1),
      TemporaryEmployee(name: 'Maria', months: 4)
    ];
  }
}
