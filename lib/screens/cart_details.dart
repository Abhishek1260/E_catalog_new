import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Cart"),
      ),
      body: Column(
        children: const [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: CartWidget(),
            ),
          ),
          Divider(),
          CartTotal(),
        ],
      ),
    );
  }
}

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, builder) {
        return const ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            onPressed: null,
            icon: Icon(Icons.remove_circle_outline),
          ),
          title: Text("Item 1"),
        );
      },
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 0.0,
      ),
      child: SizedBox(
        height: 75.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$9999",
              style: TextStyle(
                color: Colors.red[800],
                fontSize: 32.0,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Buying not supported yet!",
                    ),
                  ),
                );
              },
              child: Text("Buy"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).buttonColor,
                shape: const StadiumBorder(),
                fixedSize: const Size(100.0, 45.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
