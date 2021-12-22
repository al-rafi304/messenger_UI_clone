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
                  style: TextStyle(
                    color: Colors.white,
                  ),
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
                PeoplesItem(name: 'Mohammad Al Rafi', picPath: 'assets/01.jpg'),
                PeoplesItem(name: 'Arian', picPath: 'assets/02.jpg'),
                PeoplesItem(name: 'Rk Biplob', picPath: 'assets/03.jpg'),
                PeoplesItem(name: 'Mohammad Rifat', picPath: 'assets/04.jpg'),
                PeoplesItem(name: 'Asif Alam', picPath: 'assets/07.jpg'),
                PeoplesItem(name: 'Fahim Azom Rohan', picPath: 'assets/09.jpg'),
                PeoplesItem(name: 'Sarowar Omi', picPath: 'assets/08.jpg'),
                PeoplesItem(name: 'Mohammad Ashik', picPath: 'assets/05.jpg'),
                PeoplesItem(name: 'Mehedi Hasan Nayem', picPath: 'assets/10.jpg'),
                PeoplesItem(name: 'Mr. Thanos', picPath: 'assets/06.jpg'),
                PeoplesItem(name: 'Mushfiq Hasan Rownak', picPath: 'assets/12.jpg'),
                PeoplesItem(name: 'Sheikh Mohammad Tanveer', picPath: 'assets/11.jpg'),
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
        child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(picPath),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
                  color: Colors.grey[900],
                  thickness: 1,
                  height: 19,
                  indent: 50,
                )
      ],
    ));
  }
}
