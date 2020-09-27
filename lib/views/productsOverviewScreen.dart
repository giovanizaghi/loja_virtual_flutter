import 'package:flutter/material.dart';
import 'package:loja_virtual_flutter/data/dummyData.dart';
import 'package:loja_virtual_flutter/models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadesProducts = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Minha Loja"),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: loadesProducts.length,
          itemBuilder: (ctx, i) => Text(loadesProducts[i].title),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ));
  }
}
