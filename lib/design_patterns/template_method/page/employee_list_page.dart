import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/template_method/models/employee.dart';
import 'package:flutter_design_patterns/design_patterns/template_method/service/employee_services.dart';
import 'package:flutter_design_patterns/design_patterns/template_method/widgets/employee_card.dart';

class EmployeeListPage extends StatefulWidget {
  const EmployeeListPage({Key? key}) : super(key: key);

  @override
  _EmployeeListPageState createState() => _EmployeeListPageState();
}

class _EmployeeListPageState extends State<EmployeeListPage> {
  late EmployeeService service;
  @override
  void initState() {
    super.initState();

    service = EmployeeService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
      ),
      body: FutureBuilder<List<Widget>>(
          future: Future.wait(
            [
              buildSeasonalEmployee(),
              buildTemporalEmployee(),
            ],
          ),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (_, index) {
                  return snapshot.data![index];
                },
              );
            }

            return const CircularProgressIndicator();
          }),
    );
  }

  Future<Widget> buildSeasonalEmployee() async {
    List<Employee> list = await service.loadSeasonalEmployees();

    return Column(
      children: _buildListWidget(list),
    );
  }

  Future<Widget> buildTemporalEmployee() async {
    List<Employee> list = await service.loadTemporalEmployees();

    return Column(
      children: _buildListWidget(list),
    );
  }

  List<Widget> _buildListWidget(List<Employee> list) {
    return list
        .map((employee) => EmployeeCard(
              employee: employee,
            ))
        .toList();
  }
}
