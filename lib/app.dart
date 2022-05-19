import "./app/views/home.view.dart";
import "package:flutter/material.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
      routes: {
        "/home": (context) => Home(),
      },
    );
  }
}
