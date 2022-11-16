import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // delcaring the variables
  final int days = 30;
  final String name = "Abhishek Bansal";

  // Calling the build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Catalog App",
                  style: TextStyle(
                    color: Colors.deepPurple[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    letterSpacing: 1.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Explore a wide Range",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  "of Products",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
