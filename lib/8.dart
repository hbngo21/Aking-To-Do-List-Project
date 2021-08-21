import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EighthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'AvenirNextRoundedPro',
        ),
        home: Scaffold(
            body: Column(
                children: <Widget>[
                  Center(
                      child:Container(
                          padding: EdgeInsets.fromLTRB(0, 170, 0, 0),
                          child: Image.asset("assets/images/undraw_confirmed_81ex.png")
                      )
                  ),

                  Container(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      alignment: Alignment.center,
                      child: Text("Successful!", style: TextStyle(
                        color: Color(0xff313131),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                      )
                  ),

                  Container(
                      padding: EdgeInsets.fromLTRB(23, 10, 22, 0),
                      child: Text("You have succesfully change password. Please use your new passwords when logging in.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff313131),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),

                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fifth');
                      },
                      child: Text('Next'),
                    ),
                  )

                ]
            )
        )
    );
  }
}