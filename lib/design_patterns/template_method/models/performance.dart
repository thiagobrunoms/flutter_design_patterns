class Performance {
  double strength;

  Performance({required this.strength});

  double calculateP(int numberOfSales) => strength * numberOfSales;
}
