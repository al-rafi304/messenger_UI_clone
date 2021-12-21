import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'ChatItem.dart';
import 'QuickAccess.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Chats",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              QuickAccess(),
              SizedBox(height: 20),
              
              ChatItem(
                  picPath: "assets/03.jpg",
                  name: "Rk Biplob",
                  messege: "Ami onek boro Poita !",
                  isRead: false),
              SizedBox(
                height: 15,
              ),

              ChatItem(
                  picPath: "assets/05.jpg",
                  name: "Mohammad Ashik",
                  messege: "This worked !",
                  isRead: false),
              SizedBox(
                height: 15,
              ),

              ChatItem(
                  picPath: "assets/04.jpg",
                  name: "Rifat Al Mamun",
                  messege: "You: Whats up Chika",
                  isRead: true),
              SizedBox(
                height: 15,
              ),

              ChatItem(
                  picPath: "assets/02.jpg",
                  name: "Arian",
                  messege: "Testing Testing",
                  isRead: false),
              SizedBox(
                height: 15,
              ),
              
              ChatItem(
                  picPath: "assets/01.jpg",
                  name: "Mohammad Al Rafi",
                  messege: "You: Yes I am talking to myself...",
                  isRead: true),
              SizedBox(
                height: 15,
              ),
              
              ChatItem(
                  picPath: "assets/07.jpg",
                  name: "Asif Alam",
                  messege: "Hau Mau Khau !",
                  isRead: false),
              SizedBox(
                height: 15,
              ),

              ChatItem(
                  picPath: "assets/08.jpg",
                  name: "Sarwar Omi",
                  messege: "You: Ki obostha bro !",
                  isRead: true),
              SizedBox(
                height: 15,
              ),

              ChatItem(
                  picPath: "assets/12.jpg",
                  name: "Rifat Al Mamun",
                  messege: "You: Assalamualaikum",
                  isRead: true),
              SizedBox(
                height: 15,
              ),

              ChatItem(
                  picPath: "assets/10.jpg",
                  name: "Arian",
                  messege: "Ami nayeem huhahah",
                  isRead: false),
              SizedBox(
                height: 15,
              ),
              
              ChatItem(
                  picPath: "assets/11.jpg",
                  name: "Sheikh Mohammad Tanveer",
                  messege: "You: Tonmoy !!!!!!!!",
                  isRead: true),
              SizedBox(
                height: 15,
              ),
              
              ChatItem(
                  picPath: "assets/09.jpg",
                  name: "Fahim Azom Rohan",
                  messege: "Yo Yo kids !",
                  isRead: false),
            ],
          ),
        ),
      ),
    ));
  }
}
