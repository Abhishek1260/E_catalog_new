import 'package:flutter/material.dart';
import 'package:flutter_17/Models/catalog.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key, required this.product});

  final Products product;

  // @override
  // Widget build(BuildContext context) {
  //   return Card(
  //     elevation: 1.0,
  //     child: ListTile(
  //       leading: Image.network(product.image),
  //       title: Text(
  //         product.name,
  //       ),
  //       subtitle: Text(
  //         product.desc,
  //       ),
  //       trailing: Text(
  //         "\$${product.price}",
  //         style: const TextStyle(
  //           color: Colors.deepPurple,
  //           fontWeight: FontWeight.w700,
  //         ),
  //         textScaleFactor: 1.2,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 1.0,
      child: GridTile(
        header: Text(
          product.name,
        ),
        footer: Text(
          product.desc,
        ),
        child: Image.network(product.image),
        // subtitle: Text(
        //   product.desc,
        // ),
        // trailing: Text(
        //   "\$${product.price}",
        //   style: const TextStyle(
        //     color: Colors.deepPurple,
        //     fontWeight: FontWeight.w700,
        //   ),
        //   textScaleFactor: 1.2,
        // ),
      ),
    );
  }
}
