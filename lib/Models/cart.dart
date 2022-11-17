import 'package:flutter_17/Models/catalog.dart';

class CartItems {
  // Catalog Field
  CatalogModel? _catalog;

  // collection of ids;
  final List<int> _ids = [];

  CatalogModel? get Catalog => _catalog;

  set Catalog(CatalogModel? newCatalog) {
    _catalog = newCatalog;
  }

  List<Products> get item => _ids.map((e) => CatalogModel.getId(e)).toList();

  // Get total price;

  num get ItemPrice =>
      item.fold(0, (previousValue, element) => element.price + previousValue);

  void add(Products product) {
    _ids.add(product.id);
  }

  void remove(Products prodcut) {
    _ids.remove(prodcut.id);
  }
}
