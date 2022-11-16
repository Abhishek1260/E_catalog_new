import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_17/Models/catalog.dart';
import 'package:flutter_17/Themes/theme.dart';
import 'package:flutter_17/screens/home_details.dart';
import 'package:velocity_x/velocity_x.dart';

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

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.catalog});

  final Products catalog;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 150.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                  color: MyTheme.creamish,
                  borderRadius: BorderRadius.circular(6.0)),
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: "${catalog.id}",
                child: Image.network(
                  catalog.image,
                  height: 150.0,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 11,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  catalog.name,
                  style: TextStyle(
                    color: MyTheme.darkBluishColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(catalog.desc, style: context.captionStyle),
                ButtonBar(
                  buttonPadding: const EdgeInsets.all(0),
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${catalog.price}",
                      textScaleFactor: 1.3,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.cart,
                          color: Colors.white,
                          size: 16.0,
                        ),
                        label: const Text(
                          "Buy",
                          textScaleFactor: 0.9,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: MyTheme.darkBluishColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
