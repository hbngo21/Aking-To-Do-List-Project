import 'package:flutter/material.dart';
import 'Walkthrough.dart';
import 'Walkthrough1.dart';
import 'Walkthrough2.dart';
import 'Walkthrough3.dart';
import 'SignIn.dart';
import 'ForgotPassword.dart';
import 'ResetPassword.dart';
import 'Successful.dart';
import 'WorkListToday.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Walkthrough(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/Walkthrough1': (context) => Walkthrough1(),
        '/Walkthrough2': (context) => Walkthrough2(),
        '/Walkthrough3': (context) => Walkthrough3(),
        '/SignIn': (context) => SignIn(),
        '/ForgotPassword': (context) => ForgotPassword(),
        '/ResetPassword': (context) => ResetPassword(),
        '/Successful': (context) => Successful(),
        '/WorkListToday': (context) => WorkListToday(),
      },
    );
  }
}


Future<void> main() async {
  runApp(MyApp());
}

/*void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => SecondScreen(),
      '/third': (context) => ThirdScreen(),
    },
  ));
}*/

