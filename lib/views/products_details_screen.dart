import 'package:flutter/material.dart';
import '../models/product.dart';
import '../providers/counter_provider.dart';

class ProductDetailsScreen extends StatefulWidget {

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Column(
        children: [
          Text(CounterProvider.of(context).state.value.toString()),
          ElevatedButton(
            child: Text('+'),
            onPressed: (){
              setState(() {
                CounterProvider.of(context).state.inc();
              });
              print(CounterProvider.of(context).state.value);
            }
            ), 
        ],
      ),
    );
  }
}