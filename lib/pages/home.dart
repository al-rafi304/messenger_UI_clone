import 'package:flutter/material.dart';
import 'package:messenger_ui/ChatItem.dart';
import 'package:messenger_ui/QuickAccess.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.black.withOpacity(0.9),
      //   onTap: (int index) {
      //     if (index==1){
      //       Navigator.pushNamed(context, '/people');
      //     }else if(index == 2){
      //       Navigator.pushNamed(context, '/stories');
      //     }
      //   },
      //   unselectedItemColor: Colors.grey,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.messenger_rounded,
      //         color: Colors.blue,
      //       ),
      //       label: "Chat",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.people_rounded,
      //         color: Colors.grey,
      //       ),
      //       label: "People",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.photo_library_rounded,
      //         color: Colors.grey,
      //       ),
      //       label: "Stories",
      //     ),
      //   ],
      // ),
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
                  messege: "Kakay ni",
                  isRead: true),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                  picPath: "assets/04.jpg",
                  name: "Mohammad Rifat",
                  messege: "Ay gari gari kheli 🚗",
                  isRead: false),
              SizedBox(
                height: 15,
              ),
              ChatItem(
                  picPath: "assets/06.jpg",
                  name: "Mr. Thanos",
                  messege: "Reality is often dissapointing 😔",
                  isRead: false),
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
