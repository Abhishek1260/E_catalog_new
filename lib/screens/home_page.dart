import 'package:flutter/material.dart';
import 'package:flutter_17/Models/catalog.dart';
import 'package:flutter_17/widgets/card.dart';
import 'package:flutter_17/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DummyList = List.generate(50, (index) => CatalogModel.product[0]);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return NewCard(product: DummyList[index]);
          },
          itemCount: DummyList.length,
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
