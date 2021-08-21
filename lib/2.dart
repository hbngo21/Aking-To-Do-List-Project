import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
                children: [
                  Center(
                      child:Container(
                        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                        child: Image.asset("assets/images/undraw_events_2p66.png", width: 305, height: 252)
                      )
                  ),

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text("Welcome to aking", style: TextStyle(
                        color: Color(0xff313131),
                        fontFamily: 'AvenirNextRoundedPro',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text("Whats going to happen tomorrow?", style: TextStyle(
                      color: Color(0xff313131),
                      fontFamily: 'AvenirNextRoundedPro',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 22.4),
                    child: Image.asset("assets/images/Pagination.png"),
                  ),

                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: 230,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/Path1_2.png"),
                          ),
                        ),
                      ),

                      Container(
                        height: 230,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/Path2_2.png"),
                          ),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            width: 293,
                            height: 48,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.popAndPushNamed(context, '/third');
                              },
                              child: Text("Get Started", style: TextStyle(
                                color: Color(0xff313131),
                                fontFamily: 'AvenirNextRoundedPro',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            )
                          ),

                          Container(
                              child: FlatButton(
                                child: Text("Log In", style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'AvenirNextRoundedPro',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.popAndPushNamed(context, '/fifth');
                                },
                              )
                          ),

                        ]
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(5, 150, 0, 0),
                        alignment: Alignment.topLeft,
                        child: RaisedButton(
                          onPressed: () {
                            // Navigate back to first screen when tapped.
                            Navigator.pop(context);
                          },
                          child: Text('Pop'),
                        ),
                      ),
                    ],
                  ),
                ]
            )
        )
    );
  }
}