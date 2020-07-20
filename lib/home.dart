import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:know_canada/quizpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "images/rights.png",
    "images/elections.png",
    "images/geography.png",
    "images/law.png",
    "images/canadian_dollar.png",
  ];

  List<String> des = [
    "Test Your Knowledge",
    "Click to Test Yourself",
    "Click to Test Your Knowledge",
    "Click to Test Your Knowledge",
    "Click to Test Your Knowledge",
  ];

  Widget customcard(String sectionname, String image, String des) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the sectionname name to their other widget class
            // this name will be used to open a particular JSON file
            // for a particular quiz section
            builder: (context) => getjson(sectionname),
          ));
        },
        child: Material(
          color: Colors.redAccent,
          elevation: 15.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.0,
                  ),
                  child: Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 60.0,
                      width: 50.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    sectionname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(22.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Know Canada?",
            style: TextStyle(fontFamily: "Quando", color: Colors.red),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Rights & Responsibilities", images[0], des[0]),
          customcard("Government & Elections", images[1], des[1]),
          customcard("History & Geography", images[2], des[2]),
          customcard("Justice System", images[3], des[3]),
          customcard("Economy & Modern Canada", images[4], des[4]),
        ],
      ),
    );
  }
}
