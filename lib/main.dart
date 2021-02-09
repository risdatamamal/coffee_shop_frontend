import 'package:flutter/material.dart';
import 'package:coffee_shop/scr/commons.dart';
import 'package:coffee_shop/scr/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        primarySwatch: red,
      ),
      home: Home(),
    );
  }
}