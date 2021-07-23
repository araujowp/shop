import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {

  final List<Product> loadedProduts = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('minha loja'),
      ),
      body: GridView.builder(
        itemCount: loadedProduts.length,
        itemBuilder: (ctx, i) => Text(loadedProduts[i].title) ,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10), 
      ),
    );
  }
}