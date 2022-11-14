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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Catalog App",
        ),
      ),
      body: Center(
        child: Text(
          "Welcome to $days of Flutter with $name",
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
