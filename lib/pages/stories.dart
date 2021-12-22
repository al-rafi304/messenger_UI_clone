import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "See Stories",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          "Stories page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
