import 'package:flutter/material.dart';
import 'package:flutter_17/Models/catalog.dart';
import 'package:flutter_17/screens/home_details.dart';
import 'package:flutter_17/widgets/catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final catalog = CatalogModel.product?[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetails(product: catalog)));
          },
          child: CatalogItem(catalog: catalog),
        );
      },
      itemCount: CatalogModel.product?.length,
    );
  }
}
