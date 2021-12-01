import 'package:flutter/Material.dart';
import '../models/product.dart';
import '../data/dummy_data.dart';

class Products with ChangeNotifier {

  List<Product> _items = dummyProducts;

  List<Product> get items => [ ..._items ];

  void addProduct(Product product){
    _items.add(product);
    notifyListeners();
  }
}