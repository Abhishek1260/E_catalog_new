import 'package:flutter/material.dart';
import 'package:flutter_17/Models/catalog.dart';
import 'package:flutter_17/Themes/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});

  final Products product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 40,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.network(product.image),
                ),
              ),
            ),
            Expanded(
              flex: 40,
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  padding: const EdgeInsets.fromLTRB(0, 48, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        product.name,
                        style: TextStyle(
                          color: MyTheme.darkBluishColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 28.0,
                        ),
                      ),
                      Text(
                        product.desc,
                        style: Theme.of(context).textTheme.caption,
                        textScaleFactor: 1.3,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Officia incididunt velit ad ut anim reprehenderit id ut ad laboris quis cillum. Reprehenderit magna consequat elit laborum dolore. Laboris culpa quis labore exercitation fugiat exercitation et quis adipisicing. Enim cupidatat in eu ex. Magna consectetur cillum velit laboris velit do. Pariatur reprehenderit aliquip aliqua exercitation aute aute sit commodo.",
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${product.price}",
              style: TextStyle(
                color: MyTheme.darkBluishColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: MyTheme.darkBluishColor,
                shape: const StadiumBorder(),
              ),
              onPressed: () {},
              label: const Text(
                "Add to Cart",
              ),
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
