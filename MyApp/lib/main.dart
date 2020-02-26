import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "MyApp", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names
  String CurrentColor = "blue";
  String IconImage = "images/blue.png";

  // ignore: non_constant_identifier_names
  void ColorChange() {
    setState(() {
      if (CurrentColor == "blue") {
        IconImage = "images/green.png";
        CurrentColor = "green";
        //print(CurrentColor);
      } else {
        IconImage = "images/blue.png";
        CurrentColor = "blue";
        //print(CurrentColor);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(70, 70, 100, 1.0),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Image.asset(
                    IconImage,
                    height: 300.0,
                  ),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text("mlhomsi", style: TextStyle(color: Colors.white)),
                )),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text("I make Apps",
                  style: TextStyle(fontSize: 28.0, color: Colors.white)),
            ),
            Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: FloatingActionButton(
                  child: Text(
                    "Change",
                    style: TextStyle(fontSize: 12.0),
                  ),
                  onPressed: () {
                    ColorChange();
                  },
                )),
          ],
        ));
  }
}
