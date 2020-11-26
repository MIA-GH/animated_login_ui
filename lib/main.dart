import 'package:animated_ui/Pages/MainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Nunito",
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
