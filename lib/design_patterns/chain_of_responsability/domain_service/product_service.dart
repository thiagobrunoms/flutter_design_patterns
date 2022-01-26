import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/models/product.dart';

class ProductService {
  Future<List<Product>> loadProducts() async {
    return [
      Product(
        name: 'Maçã',
        price: 2,
        available: 5,
        availableAt: DateTime(2022, 1, 1),
        minItens: 1,
      ),
      Product(
        name: 'Cereais',
        price: 7,
        available: 16,
        availableAt: DateTime(2022, 1, 28),
        minItens: 2,
      ),
      Product(
        name: 'Queijo',
        price: 6.5,
        available: 20,
        availableAt: DateTime(2022, 1, 15),
        minItens: 3,
      ),
      Product(
        name: 'Perfume',
        price: 72,
        available: 18,
        availableAt: DateTime(2022, 1, 1),
        minItens: 1,
      ),
    ];
  }
}
