abstract class BaseProduct {
  int id;
  List<BaseProduct> products = [];
  String? observations;
  int quantity;

  BaseProduct({required this.id, this.quantity = 0});

  double getPrice();

  int get totalQuantity => products.length;

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
