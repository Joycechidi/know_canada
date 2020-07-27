import 'dart:async';
import 'package:flutter/material.dart';
import 'package:know_canada/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//        backgroundColor: Colors.indigo,
        body: Center(
          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/canada.png"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Text(
                  'How Much Do You\nKnow About Canada?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: "Alike",
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
      ),
    );
  }
}
