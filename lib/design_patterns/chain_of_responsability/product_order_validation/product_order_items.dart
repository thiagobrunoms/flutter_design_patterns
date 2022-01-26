import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/models/product.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_result.dart';

class ProductOrderItems extends ProductOrder {
  @override
  ProductOrderResult? check(Product product, {Map<String, dynamic>? params}) {
    if (params?['items'] < product.minItens) {
      return ProductOrderResult(
          finalResult: false,
          message: 'Este produto deve vir acompanhado de mais de 2 itens!');
    }

    return checkNext(product, params: params);
  }
}
