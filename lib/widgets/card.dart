import 'package:flutter/material.dart';
import 'package:flutter_17/Models/catalog.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key, required this.product});

  final Products product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: ListTile(
        leading: Image.network(product.image),
        title: Text(
          product.name,
          // style: TextStyle(
          //   letterSpacing: -0.5,
          //   fontSize: 12.0,
          // ),
        ),
        subtitle: Text(
          product.desc,
          // style: TextStyle(
          //   letterSpacing: -0.5,
          //   fontSize: 12.0,
          // ),
        ),
        trailing: Text(
          "\$${product.price}",
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w700,
          ),
          textScaleFactor: 1.2,
        ),
      ),
    );
  }
}
