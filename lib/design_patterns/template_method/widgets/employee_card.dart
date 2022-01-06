import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/template_method/models/employee.dart';
import 'package:flutter_design_patterns/design_patterns/template_method/models/report.dart';

class EmployeeCard extends StatelessWidget {
  final Employee employee;
  const EmployeeCard({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Report report = employee.generateReport();

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name ${employee.name}'),
          const Text('Report'),
          Text('Gains: ${report.gains}'),
          Text('Mean Clientes: ${report.numberOfClients}'),
          Text('Final Message ${report.message} ')
        ],
      ),
    );
  }
}
