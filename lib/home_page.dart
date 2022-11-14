import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Abhishek Bansal";
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
          style: const TextStyle(fontFamily: "poppins"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
