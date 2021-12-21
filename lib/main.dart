import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';


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
        child: Column(
          children: [
            QuickAccess(),
            SizedBox(height: 20),
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
                picPath: "assets/03.jpg",
                name: "Rk Biplob",
                messege: "Ami onek boro Poita !",
                isRead: false),
            SizedBox(
              height: 15,
            ),
            ChatItem(
                picPath: "assets/02.jpg",
                name: "Arian",
                messege: "Testing Testing",
                isRead: true),
            SizedBox(
              height: 15,
            ),
            ChatItem(
                picPath: "assets/01.jpg",
                name: "Mohammad Al Rafi",
                messege: "You: Yes I am talking to myself...",
                isRead: true),
            Text("")
          ],
        ),
      ),
    ));
  }
}

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
          name: "Arian",
          picPath: "assets/02.jpg",
        ),
        NameBubble(
          name: "Rk\nBiplob",
          picPath: "assets/03.jpg",
        ),
        NameBubble(
          name: "Rifat\nAl Mamun",
          picPath: "assets/04.jpg",
        ),
      ],
    );
  }
}

class ChatItem extends StatefulWidget {
  final String picPath;
  final String name;
  final String messege;
  bool isRead;

  ChatItem({this.picPath, this.name, this.messege, this.isRead});

  @override
  _ChatItemState createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    if (widget.isRead == false) {
      //Unread state
      return Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(widget.picPath),
            radius: 28,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(widget.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15)),
                    Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 30.1,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              widget.isRead = true;
                            });
                          },
                          child: Text("Read"),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(widget.messege,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("- 12:40 am",
                          style: TextStyle(color: Colors.grey[700])),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue[700],
                ),
              ),
            ),
          )
        ],
      );
    } else {
      //Read State
      return Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(widget.picPath),
            radius: 28,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text(widget.name,
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 30.1,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            widget.isRead = false;
                          });
                        },
                        child: Text("Unread"),
                      ),
                    ),
                  )
                ]),
                Row(
                  children: [
                    Text(widget.messege,
                        style: TextStyle(
                          color: Colors.grey[700],
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("- 12:40 am",
                          style: TextStyle(color: Colors.grey[700])),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }
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