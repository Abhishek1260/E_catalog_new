import 'package:flutter/material.dart';
import 'package:flutter_17/Models/catalog.dart';
import 'package:flutter_17/Themes/theme.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.catalog});

  final Products catalog;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
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
                  color: Theme.of(context).canvasColor,
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
                    color: Theme.of(context).accentColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  catalog.desc,
                  style: Theme.of(context).textTheme.caption?.merge(
                        TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                ),
                ButtonBar(
                  buttonPadding: const EdgeInsets.all(0),
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${catalog.price}",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Theme.of(context).buttonColor,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 16.0,
                        ),
                        label: const Text(
                          "Buy",
                          textScaleFactor: 0.9,
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
