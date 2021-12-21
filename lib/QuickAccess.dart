import 'package:flutter/material.dart';

class QuickAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
          SizedBox(width: 18,),
          NameBubble(
            fName: "Mohammad",
            lName: "Al Rafi",
            picPath: "assets/01.jpg",
          ),
          NameBubble(
            fName: "Mohammad",
            lName: "Rifat",
            picPath: "assets/04.jpg",
          ),
          NameBubble(
            fName: "Rk",
            lName: "Biplob",
            picPath: "assets/03.jpg",
          ),
          NameBubble(
            fName: "Asif",
            lName: "Alam",
            picPath: "assets/07.jpg",
          ),
          NameBubble(
            fName: "Sheikh",
            lName: "Mohammad Tanveer",
            picPath: "assets/11.jpg",
          ),
          NameBubble(
            fName: "Fahim AzomRohan",
            lName: "Rohan",
            picPath: "assets/09.jpg",
          ),
          NameBubble(
            fName: "Mehedi Hasan",
            lName: "Nayeem",
            picPath: "assets/10.jpg",
          ),
          NameBubble(
            fName: "Mr.",
            lName: "Thanos",
            picPath: "assets/06.jpg",
          ),
          NameBubble(
            fName: "Sarowar",
            lName: "Omi",
            picPath: "assets/08.jpg",
          ),
          
        ],
      ),
    );
  }
}

class NameBubble extends StatelessWidget {
  final String picPath;
  final String fName;
  final String lName;

  NameBubble({this.picPath, this.fName, this.lName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(picPath),
            radius: 28,
          ),
          SizedBox(height: 5),
          Text(
            fName,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          Text(
            lName,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 11),
          )
        ],
      ),
    );
  }
}