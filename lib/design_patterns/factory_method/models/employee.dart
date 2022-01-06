abstract class Employee {
  String name;
  double baseSalary;

  Employee({required this.name, this.baseSalary = 50});

  double calculateSalary();
}
