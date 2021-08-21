import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'toColor.dart';

class SixthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.popAndPushNamed(context, '/fifth'),
              ),
            ),
            body: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(24, 60.29, 0, 0),
                    child: Text("Forgot Password", style: TextStyle(
                      color: '#313131'.toColor(),
                      fontFamily: 'AvenirNextRoundedPro',
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(24, 12, 0, 0),
                    child: Text("Please enter your email below to receive your password reset instructions", style: TextStyle(
                      color: '#9B9B9B'.toColor(),
                      fontFamily: 'AvenirNextRoundedPro',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(24, 48, 0, 0),
                    child: Text("Username", style: TextStyle(
                      color: '#313131'.toColor(),
                      fontFamily: 'AvenirNextRoundedPro',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: TextField(
                        style: TextStyle(
                          color: '#313131'.toColor(),
                          fontFamily: 'AvenirNextRoundedPro',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter your username",
                          hintStyle: TextStyle(
                            color: '#C6C6C6'.toColor(),
                            fontFamily: 'AvenirNextRoundedPro',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                  ),

                  Container(
                      padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                      child: SizedBox(
                          height: 48,
                          width: 327,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                            color: '#f96060'.toColor(),
                            onPressed: () {
                              Navigator.popAndPushNamed(context, '/seventh');
                            },
                            child: Text("Send Request", style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AvenirNextRoundedPro',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          )
                      )
                  ),

                ]
            )
        )
    );
  }
}