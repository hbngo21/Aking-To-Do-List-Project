import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
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
                        padding: EdgeInsets.fromLTRB(0, 250, 0, 12),
                        child: Image.asset("assets/images/Fill1.png")
                      )
                  ),

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Image.asset("assets/images/aking.png")
                  ),

                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
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