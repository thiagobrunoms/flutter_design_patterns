import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/iterators/my_iterator.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/models/purchase.dart';
import 'package:flutter_design_patterns/design_patterns/iterator_v2/service/delivery_service.dart';

class DeliveryProcessPage extends StatefulWidget {
  const DeliveryProcessPage({Key? key}) : super(key: key);

  @override
  _DeliveryProcessPageState createState() => _DeliveryProcessPageState();
}

class _DeliveryProcessPageState extends State<DeliveryProcessPage> {
  DeliveryService service = DeliveryService();
  List<Widget> purchasesWidgets = [];
  late MyIterator<Purchase> purchasesIterator;
  int? selectedDeliveryModel = 0;
  late List<Purchase> purchases;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entregas'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildDropDownMenu(),
            FutureBuilder(
                future: service.loadDelivery(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      children: purchasesWidgets,
                    );
                  }

                  return const CircularProgressIndicator();
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
          child: const Text('Próximo'),
          onPressed: () {
            setState(() {
              if (purchasesIterator.hasNext()) {
                Purchase nextPurchase = purchasesIterator.getNext();
                purchasesWidgets.add(_buildPurchasesWidget(nextPurchase));
              }
            });
          }),
    );
  }

  Widget _buildDropDownMenu() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: DropdownButton<int>(
        items: const [
          DropdownMenuItem(child: Text('Mais próximos'), value: 0),
          DropdownMenuItem(child: Text('Primeiros a comprar'), value: 1),
        ],
        value: selectedDeliveryModel,
        onChanged: (selected) {
          setState(() {
            purchasesWidgets = [];
            selectedDeliveryModel = selected;
            _loadPurchases();
          });
        },
      ),
    );
  }

  void _loadPurchases() {
    purchasesIterator = selectedDeliveryModel == 0
        ? service.getClosestDelivery()
        : service.getTimeBasedDelivery();
  }

  Widget _buildPurchasesWidget(Purchase purchase) {
    return ListTile(
      title: Text(purchase.address.name),
      subtitle: Text(
        'Data: ${purchase.date}',
      ),
    );
  }
}
