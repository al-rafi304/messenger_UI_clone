import 'package:flutter/material.dart';
import 'package:messenger_ui/AvatarBubble.dart';

class ChatItem extends StatefulWidget {
  final String picPath;
  final String name;
  final String messege;
  final bool hasStory;
  final bool isActive;
  bool isRead;

  ChatItem({this.picPath, this.name, this.messege, this.isRead, this.isActive = false, this.hasStory = false});

  @override
  _ChatItemState createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
      //Unread state
      return GestureDetector(
        onTap: () {
          print("Tapped !");
          setState(() {
            widget.isRead = !widget.isRead;
          });
        },
        
        child: Row(
          children: [
            AvatarBubble(picPath: widget.picPath, radius: 28, hasStory: widget.hasStory, isActive: widget.isActive),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.name,
                          style: !widget.isRead ? TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15)
                              : TextStyle(color: Colors.white, fontSize: 15),
                              ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 190),
                        child: Text(widget.messege,
                            overflow: TextOverflow.ellipsis,
                            style: !widget.isRead ? TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                            : TextStyle(
                              color: Colors.grey[700]
                            )
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
            !widget.isRead ? Expanded(
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
            : Text('')
          ],
        ),
      );
    
  }
}
