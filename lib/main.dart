import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Flutter 17",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
