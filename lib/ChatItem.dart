import 'package:flutter/material.dart';


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