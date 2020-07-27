import 'package:flutter/material.dart';
import 'package:know_canada/home.dart';

class resultpage extends StatefulWidget {
  int marks;
  resultpage({Key key, @required this.marks}) : super(key: key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}

class _resultpageState extends State<resultpage> {
  List<String> images = [
    "images/winkemoji.jpg",
    "images/thumbsup.jpg",
    "images/crying.png",
  ];

  String message;
  String image;

  @override
  void initState() {
    if (marks <= 50) {
      image = images[2];
      message = "You Scored $marks%\n" +
          "Learn more from Discover Canada:\nhttps://bit.ly/39xg9pT";
    } else if (marks <= 80) {
      image = images[1];
      message = "You Scored $marks%\n" +
          "Learn more from Discover Canada:\nhttps://bit.ly/39xg9pT\n";
    } else {
      image = images[0];
      message = "You Scored $marks%\n" + "You're a True Canadian!\n";
    }
    super.initState();
  }

  int marks;
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Your Score",
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 20.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "Quando",
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 5.0, color: Colors.red),
                  splashColor: Colors.redAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
