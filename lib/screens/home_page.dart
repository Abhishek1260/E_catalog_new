import 'package:flutter/material.dart';
import 'package:flutter_17/widgets/drawer.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("Catalog App"),
      ),
      body: const Center(
        child: Text("Welcome to 30 days of flutter"),
      ),
      drawer: MyDrawer(),
    );
  }
}
