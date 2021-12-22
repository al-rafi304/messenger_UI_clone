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
      return GestureDetector(
        onTap: () {
          print("Tapped !");
          setState(() {
            widget.isRead = true;
          });
        },
        
        child: Row(
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
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 190),
                        child: Text(widget.messege,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ),
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
        ),
      );
    } else {
      //Read State
      return GestureDetector(
        onTap: () {
          setState(() {
            widget.isRead = false;
          });
        },
        child: Row(
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
                    
                  ]),
                  Row(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 190),
                        child: Text(widget.messege,
                            style: TextStyle(
                              color: Colors.grey[700],
                            ), 
                            overflow: TextOverflow.ellipsis,
                          ),
                            
                      ),
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
        ),
      );
    }
  }
}
