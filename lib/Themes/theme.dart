import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: "poppins",
        canvasColor: creamish,
        accentColor: darkBluishColor,
        cardColor: Colors.white,
        buttonColor: darkBluishColor,
        hintColor: darkBluishColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
          foregroundColor: Colors.black87,
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: "poppins",
        canvasColor: darkCreamColor,
        cardColor: Colors.black,
        hintColor: Colors.white,
        buttonColor: lightBlueColor,
        accentColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          foregroundColor: Colors.white,
        ),
        brightness: Brightness.dark,
      );

  static Color darkBluishColor = const Color(0xff403b58);
  static Color creamish = const Color(0xfff5f5f5);
  static Color darkCreamColor = Color.fromARGB(255, 5, 21, 43);
  static Color? lightBlueColor = Colors.indigo[500];
}
