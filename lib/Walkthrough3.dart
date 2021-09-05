import 'package:flutter/material.dart';

class Walkthrough3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(children: [
      Center(
          child: Container(
              padding: EdgeInsets.fromLTRB(0, 78, 0, 0),
              child: Image.asset("assets/images/undraw_analysis_4jis.png",
                  width: 282, height: 231))),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 28, 0, 0),
        child: Text(
          "Tasks and assign",
          style: TextStyle(
            color: Color(0xff313131),
            fontFamily: 'AvenirNextRoundedPro',
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
        child: Text(
          "Tasks and assign them to colleagues",
          style: TextStyle(
            color: Color(0xff313131),
            fontFamily: 'AvenirNextRoundedPro',
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 30, 0, 17.4),
        child: Image.asset("assets/images/Pagination_3.png"),
      ),
      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/Path1_4.png"),
              ),
            ),
          ),
          Container(
            height: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/Path2_4.png"),
              ),
            ),
          ),
          Column(children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: SizedBox(
                  width: 293,
                  height: 48,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/SignIn');
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Color(0xff313131),
                        fontFamily: 'AvenirNextRoundedPro',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: FlatButton(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'AvenirNextRoundedPro',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/SignIn');
                  },
                ))
          ]),
        ],
      ),
    ])));
  }
}
