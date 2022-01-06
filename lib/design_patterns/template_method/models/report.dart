class Report {
  final DateTime date;
  late double? gains;
  late double? numberOfClients;
  final String message;

  Report(
      {required this.date,
      this.gains,
      this.numberOfClients,
      required this.message});
}
