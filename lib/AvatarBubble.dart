import 'dart:ffi';

import 'package:flutter/material.dart';

class AvatarBubble extends StatelessWidget {

  final String picPath;
  final double radius;
  final bool isActive;
  final bool hasStory;

  AvatarBubble({this.picPath, this.radius, this.isActive = false, this.hasStory = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: hasStory ? CircleAvatar(     // Blue Border
        radius: radius,
        backgroundColor: Colors.blue,
        child: CircleAvatar(              // Black Border
          backgroundColor: Colors.black,
          radius: radius - 2,
          child: CircleAvatar(              // Profile Pic
            backgroundImage: AssetImage(picPath),
            radius: radius - 4.5,
            child: isActive ? Container(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(          // Active Black Border
                backgroundColor: Colors.black,
                radius: 8.5, //8.5  radius * (39/56)
                child: CircleAvatar(        // Active Green fill
                  backgroundColor: Colors.green,
                  radius: 6,   //6   radius * (11/14)
                ),
              ),
            )
            : Text(''),
          ),
        ),
      )
      : CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(picPath),
        child: isActive ? Container(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 8.5,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 6,
              ),
            ),
          )
          : Text(''),
      )
    );
  }
}