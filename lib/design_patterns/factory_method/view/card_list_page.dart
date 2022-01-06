import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/models/employee.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/services/factory_method_services.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/view/seasonal_employee_card.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/view/temporary_employee_card.dart';

class CardListPage extends StatelessWidget {
  final FMServices service = FMServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employees'),
      ),
      body: FutureBuilder<List<Widget>>(
        future: Future.wait(
          [
            buildSeasonalEmployee(),
            buildTemporalEmployee(),
          ],
        ),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (_, index) {
              return snapshot.data![index];
            },
          );
        },
      ),
    );
  }

  Future<Widget> buildSeasonalEmployee() async {
    List<Employee> employess = await service.loadSeasonalEmployees();
    List<Widget> seasonalWidgets =
        employess.map((e) => SeasonalEmployeeCard(e).create()).toList();

    return Column(
      children: seasonalWidgets,
    );
  }

  Future<Widget> buildTemporalEmployee() async {
    List<Employee> employess = await service.loadTemporalEmployees();
    List<Widget> seasonalWidgets =
        employess.map((e) => TemporaryEmployeeCard(e).create()).toList();

    return Column(
      children: seasonalWidgets,
    );
  }
}
