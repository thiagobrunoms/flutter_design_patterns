import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/models/product.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_result.dart';

class ProductOrderQuantity extends ProductOrder {
  @override
  ProductOrderResult? check(Product product, {Map<String, dynamic>? params}) {
    int quantity = params?['quantity'];
    if (quantity > product.available) {
      return ProductOrderResult(
          finalResult: false, message: 'Quantidade desejada indisponível!');
    }

    return checkNext(product, params: params);
  }
}
