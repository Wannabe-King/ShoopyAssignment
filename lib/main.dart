import 'package:flutter/material.dart';
import 'package:shoopyassignment/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Clone",
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Color(0xFF075E54),
      ),
      home: Homescreen(),
    );
  }
}
