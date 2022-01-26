import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/models/product.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_result.dart';

class ProductOrderPeriod extends ProductOrder {
  @override
  ProductOrderResult? check(Product product, {Map<String, dynamic>? params}) {
    if (product.availableAt.isAfter(DateTime.now())) {
      return ProductOrderResult(
          finalResult: false, message: 'Produto indisponível no momento!');
    }

    return checkNext(product, params: params);
  }
}
