import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
                children: [
                  Center(
                      child:Container(
                          padding: EdgeInsets.fromLTRB(0, 78, 0, 0),
                          child: Image.asset("assets/images/undraw_superhero_kguv.png", width: 314, height: 229)
                      )
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text("Work happens", style: TextStyle(
                      color: Color(0xff313131),
                      fontFamily: 'AvenirNextRoundedPro',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text("Get notified when work happens", style: TextStyle(
                      color: Color(0xff313131),
                      fontFamily: 'AvenirNextRoundedPro',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 17.4),
                    child: Image.asset("assets/images/Pagination_2.png"),
                  ),

                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: 230,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/Path1_3.png"),
                          ),
                        ),
                      ),

                      Container(
                        height: 230,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/Path2_3.png"),
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
                                    Navigator.popAndPushNamed(context, '/forth');
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