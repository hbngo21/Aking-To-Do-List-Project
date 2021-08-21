import 'package:flutter/material.dart';
import '1.dart';
import '2.dart';
import '3.dart';
import '4.dart';
import '5.dart';
import '6.dart';
import '7.dart';
import '8.dart';
import '9.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/forth': (context) => ForthScreen(),
        '/fifth': (context) => FifthScreen(),
        '/sixth': (context) => SixthScreen(),
        '/seventh': (context) => SeventhScreen(),
        '/eighth': (context) => EighthScreen(),
        '/ninth': (context) => NinthScreen(),
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

