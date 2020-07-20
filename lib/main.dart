import 'package:flutter/material.dart';
import 'package:know_canada/splash.dart';
//import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "O Canada",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: splashscreen(),
    );
  }
}
