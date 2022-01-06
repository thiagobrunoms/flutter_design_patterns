abstract class BaseProduct {
  int id;

  BaseProduct({required this.id});

  double getPrice();

  Map<String, dynamic> toMap();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseProduct &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id;
}
