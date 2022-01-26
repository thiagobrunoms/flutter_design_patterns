import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/models/product.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_items.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_period.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_quantity.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_result.dart';

class CartService {
  ProductOrderResult? addProductToOrder(Product product,
      {Map<String, dynamic>? params}) {
    ProductOrder productOrder = ProductOrderQuantity();
    productOrder.linkWith(ProductOrderPeriod()).linkWith(ProductOrderItems());

    return productOrder.check(product, params: params);
  }
}
