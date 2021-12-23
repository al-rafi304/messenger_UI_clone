import 'package:flutter/material.dart';
import 'package:messenger_ui/ChatItem.dart';
import 'package:messenger_ui/QuickAccess.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
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
                isRead: false,
                isActive: true,
              ),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                picPath: "assets/05.jpg",
                name: "Mohammad Ashik",
                messege: "Kakay ni",
                isRead: true,
                hasStory: true,
                isActive: true,
              ),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                picPath: "assets/04.jpg",
                name: "Mohammad Rifat",
                messege: "Ay gari gari kheli 🚗",
                isRead: false,
                hasStory: true,
              ),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                picPath: "assets/06.jpg",
                name: "Mr. Thanos",
                messege: "Reality is often dissapointing 😔",
                isRead: false,
                hasStory: true,
              ),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                  picPath: "assets/01.jpg",
                  name: "Mohammad Al Rafi",
                  messege: "You: Yes I'm talking to myself:)",
                  isRead: true),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                picPath: "assets/07.jpg",
                name: "Asif Alam",
                messege: "Hau Mau Khau !👻",
                isRead: false,
                isActive: true,
              ),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                  picPath: "assets/08.jpg",
                  name: "Sarwar Omi",
                  messege: "You: Ki obostha bro !",
                  hasStory: true,
                  isActive: true,
                  isRead: true),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                  picPath: "assets/12.jpg",
                  name: "Mushfiq Hasan Rownak",
                  messege: "You: Assalamualaikum",
                  isRead: true),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                  picPath: "assets/10.jpg",
                  name: "Mehedi Hasan Nayem",
                  messege: "Ami nayeem huhahah",
                  isActive: true,
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
                  hasStory: true,
                  isActive: true,
                  isRead: false),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                  picPath: "assets/02.jpg",
                  name: "Arian",
                  messege: "Testing Testing",
                  isRead: false),
            ],
          ),
        ),
      ),
    );
  }
}
