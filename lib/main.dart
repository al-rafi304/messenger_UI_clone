import 'package:flutter/material.dart';
import 'package:messenger_ui/pages/home.dart';
import 'package:messenger_ui/pages/people.dart';
import 'package:messenger_ui/pages/stories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/people': (context) => People(),
        '/stories': (context) => Stories()
      },
    );
  }
}
