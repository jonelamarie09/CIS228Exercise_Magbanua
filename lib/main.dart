import 'package:flutter/material.dart';
import 'package:flutter_activity_magbanua/home.dart';
import 'about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Ecommerce App',
      home: HomeScreen(),
    );
  }
}