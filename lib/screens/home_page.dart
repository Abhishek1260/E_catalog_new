import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_17/Models/catalog.dart';
import 'package:flutter_17/Themes/theme.dart';
import 'package:flutter_17/utils/routes.dart';
import 'package:flutter_17/widgets/drawer.dart';
import 'dart:convert';

import '../widgets/catalog_header.dart';
import '../widgets/catalog_list.dart';

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
      backgroundColor: MyTheme.creamish,
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyTheme.darkBluishColor,
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.CartRoute);
        },
        child: const Icon(
          Icons.shopping_cart,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CatalogHeader(
                heading: "Catalog App",
                subTitle: "Trending Product",
              ),
              const SizedBox(
                height: 20.0,
              ),
              if (CatalogModel.product != null)
                const Expanded(
                  child: CatalogList(),
                )
              else
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
