import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/product_item.dart';
import '../providers/products.dart';

class ProductGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final productsProvider = Provider.of<Products>(context);
  final products = productsProvider.items; 

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: (ctx) => products[i],
        child: ProductItem(products[i]),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10, 
        mainAxisSpacing: 10), 
    );
  }
}