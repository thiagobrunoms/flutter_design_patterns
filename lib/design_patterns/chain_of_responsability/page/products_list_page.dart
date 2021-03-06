import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/domain_service/cart_service.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/domain_service/product_service.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/models/product.dart';
import 'package:flutter_design_patterns/design_patterns/chain_of_responsability/product_order_validation/product_order_result.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  ProductService productService = ProductService();
  CartService cartService = CartService();
  Map<Product, bool?> checkedProduct = {};
  String? messageResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: FutureBuilder<List<Product>>(
        future: productService.loadProducts(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Product>? products = snapshot.data;
          return ListView.builder(
              itemCount: products?.length,
              itemBuilder: (_, index) {
                checkedProduct[products![index]] = false;
                return _buildProductItem(products[index]);
              });
        },
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    ProductOrderResult? result;

    return StatefulBuilder(builder: (context, setState) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: checkedProduct[product],
                    onChanged: (checked) {
                      if (checked != null && checked) {
                        result = cartService.addProductToOrder(product,
                            params: {'quantity': 13, 'items': 2});

                        print(
                            'result: ${result != null ? result?.message : ''}');
                      }

                      setState(() {
                        messageResult = result?.message;
                        checkedProduct[product] = checked!;
                      });
                    }),
                Text(product.name)
              ],
            ),
            Text("Resultado: ${messageResult ?? ''}"),
          ],
        ),
      );
    });
  }
}
