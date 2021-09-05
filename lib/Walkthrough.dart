import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todolist/Walkthrough1.dart';

class Walkthrough extends StatefulWidget {
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Walkthrough1())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'AvenirNextRoundedPro',
        ),
        home: Scaffold(
            body: Column(children: <Widget>[
          Center(
              child: Container(
                  padding: EdgeInsets.fromLTRB(0, 250, 0, 12),
                  child: Image.asset("assets/images/Fill1.png"))),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image.asset("assets/images/aking.png")),
        ])));
  }
}
