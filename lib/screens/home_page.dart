import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_17/Models/catalog.dart';
import 'package:flutter_17/widgets/card.dart';
import 'package:flutter_17/widgets/drawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void loadData() async {
    await Future.delayed(const Duration(seconds: 4));
    var catalogJson = await rootBundle.loadString("assets/json/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData['products'];
    setState(() {
      CatalogModel.product = List.from(productsData)
          .map<Products>((e) => Products.fromMap(e))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CatalogModel.product != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return NewCard(product: CatalogModel.product?[index]);
                  },
                  itemCount: CatalogModel.product?.length,
                )
              : const Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: const MyDrawer(),
    );
  }
}
