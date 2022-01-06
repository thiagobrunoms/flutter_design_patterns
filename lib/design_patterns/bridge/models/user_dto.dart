class UserDTO {
  final String name;

  UserDTO({required this.name});

  Map<String, dynamic> toMap() {
    return {'name': name};
  }
}
