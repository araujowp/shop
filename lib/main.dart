import 'package:flutter/material.dart';
import 'package:shop/views/products_details_screen.dart';
import './views/products_overview_screen.dart';
import './utils/app_routes.dart';
import './providers/counter_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange, 
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailsScreen()
        },
      ),
    );
  }
}