import 'package:flutter/material.dart';
import 'package:flutter_17/screens/home_page.dart';
import 'package:flutter_17/screens/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter 17",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: "poppins",
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    ),
  );
}
