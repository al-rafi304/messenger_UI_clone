import 'package:flutter/material.dart';

class People extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Active Peoples",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Text(
        "People page",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
