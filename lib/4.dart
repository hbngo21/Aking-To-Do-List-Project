import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'toColor.dart';

class ForthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
                children: [
                  Center(
                      child:Container(
                          padding: EdgeInsets.fromLTRB(0, 78, 0, 0),
                          child: Image.asset("assets/images/undraw_analysis_4jis.png", width: 282, height: 231)
                      )
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 28, 0, 0),
                    child: Text("Tasks and assign", style: TextStyle(
                      color: '#313131'.toColor(),
                      fontFamily: 'AvenirNextRoundedPro',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text("Tasks and assign them to colleagues", style: TextStyle(
                      color: '#313131'.toColor(),
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

                      Column(
                          children: [
                            /*Container(
                                alignment: Alignment.center,
                                height: 48,
                                width: 293,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    border: Border.all(
                                        color: Colors.white, style: BorderStyle.solid
                                    )
                                ),
                                child: Text("Get Started", style: TextStyle(
                                  color: '#313131'.toColor(),
                                  fontFamily: 'AvenirNextRoundedPro',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                            ),*/

                            SizedBox(
                                width: 293,
                                height: 48,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.popAndPushNamed(context, '/fifth');
                                  },
                                  child: Text("Get Started", style: TextStyle(
                                    color: '#313131'.toColor(),
                                    fontFamily: 'AvenirNextRoundedPro',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                )
                            ),

                            Container(
                                //padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
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
                            )

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