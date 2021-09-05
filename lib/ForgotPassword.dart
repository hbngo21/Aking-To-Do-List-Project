import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.popAndPushNamed(context, '/SignIn'),
              ),
            ),
            body: SingleChildScrollView(
              reverse: true,
              child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(24, 60.29, 0, 0),
                      child: Text("Forgot Password", style: TextStyle(
                        color: Color(0xff313131),
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
                        color: Color(0xFF9B9B9B),
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
                        color: Color(0xff313131),
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
                            color: Color(0xff313131),
                            fontFamily: 'AvenirNextRoundedPro',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            hintText: "Enter your username",
                            hintStyle: TextStyle(
                              color: Color(0xFFC6C6C6),
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
                              color: Color(0xfff96060),
                              onPressed: () {
                                Navigator.popAndPushNamed(context, '/ResetPassword');
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
              ),
            )
        )
    );
  }
}