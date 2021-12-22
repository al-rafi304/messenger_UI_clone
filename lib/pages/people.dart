import 'package:flutter/material.dart';

class People extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Active",
                  style: TextStyle(color: Colors.white, ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                PeoplesItem(name: 'Rk Biplob', picPath: 'assets/03.jpg'),
                Divider(
                  color: Colors.grey[900],
                  thickness: 1,
                  height: 20,
                  indent: 50,
                ),
                PeoplesItem(name: 'Rk Biplob', picPath: 'assets/03.jpg'),
                Divider(
                  color: Colors.grey[900],
                  thickness: 1,
                  height: 20,
                  indent: 50,
                ),
                PeoplesItem(name: 'Rk Biplob', picPath: 'assets/03.jpg'),
                Divider(
                  color: Colors.grey[900],
                  thickness: 1,
                  height: 20,
                  indent: 50,
                )
              ],
            ),
          ),
        ));
  }
}

class PeoplesItem extends StatelessWidget {
  final String picPath;
  final String name;

  PeoplesItem({this.picPath, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(picPath),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}
