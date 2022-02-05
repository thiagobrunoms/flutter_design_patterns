import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/models/product.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_result.dart';

abstract class ProductOrder {
  ProductOrder? next;

  ProductOrder linkWith(ProductOrder next) {
    this.next = next;

    return next;
  }

  ProductOrderResult? check(Product product, {Map<String, dynamic>? params});

  ProductOrderResult? checkNext(Product product,
      {Map<String, dynamic>? params}) {
    if (next == null) {
      return ProductOrderResult(
          finalResult: true, message: 'Produto adicionado com sucesso!');
    }

    return next?.check(product, params: params);
  }
}
