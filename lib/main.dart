import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(HomeServiceApp());
}

class HomeServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Service App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
