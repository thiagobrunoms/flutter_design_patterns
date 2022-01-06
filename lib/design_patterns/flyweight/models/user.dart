class User {
  int id;
  String name;

  User({required this.id, required this.name});

  bool get isSuperUser => id % 2 == 0;
}
