import 'package:flutter/material.dart';

class QuickAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[900],
              ),
              child: Icon(
                Icons.video_call_rounded,
                color: Colors.white,
                size: 30,
                ),
            ),
            SizedBox(height: 5,),
            Text(
              "Create\nroom",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12
              ),
            )
          ],
        ),
        NameBubble(
          name: "Mohammad\nAl Rafi",
          picPath: "assets/01.jpg",
        ),
        NameBubble(
          name: "Rifat\nAl Mamun",
          picPath: "assets/04.jpg",
        ),
        NameBubble(
          name: "Rk\nBiplob",
          picPath: "assets/03.jpg",
        ),
        NameBubble(
          name: "Asif\nAlam",
          picPath: "assets/07.jpg",
        ),
      ],
    );
  }
}

class NameBubble extends StatelessWidget {
  final String picPath;
  final String name;

  NameBubble({this.picPath, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(picPath),
          radius: 28,
        ),
        SizedBox(height: 5),
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 12),
        )
      ],
    );
  }
}