import 'package:flutter/material.dart';
import 'package:messenger_ui/AvatarBubble.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "Stories",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (175 / 250), // Width = 175, Height = 250
            children: [
              StoryBlock(
                name: 'Add to Story',
                profilePicPath: 'assets/01.jpg',
                storyPicPath: 'assets/01.jpg',
                isDefault: true,
              ),
              StoryBlock(
                name: 'Mohammad Rifat',
                profilePicPath: 'assets/04.jpg',
                storyPicPath: 'assets/Story04.png',
                storyCount: 7,
              ),
              StoryBlock(
                name: 'Mr. Thanos',
                profilePicPath: 'assets/06.jpg',
                storyPicPath: 'assets/Story06.jpg',
                storyCount: 5,
              ),
              StoryBlock(
                name: 'Mohammad Asif',
                profilePicPath: 'assets/07.jpg',
                storyPicPath: 'assets/Story07.jpg',
                isActive: true,
              ),
              StoryBlock(
                name: 'Sheikh Mohammad Tanveer',
                profilePicPath: 'assets/11.jpg',
                storyPicPath: 'assets/Story11.jpg',
                isActive: true,
              ),
              StoryBlock(
                name: 'Mohammad Ashik',
                profilePicPath: 'assets/05.jpg',
                storyPicPath: 'assets/Story05.jpg',
                storyCount: 2,
              ),
              StoryBlock(
                name: 'Mushfiq Hasan Rownak',
                profilePicPath: 'assets/12.jpg',
                storyPicPath: 'assets/Story12.jpg',
                storyCount: 3,
              ),
              StoryBlock(
                name: 'Rk Biplob',
                profilePicPath: 'assets/03.jpg',
                storyPicPath: 'assets/Story03.jpg',
                storyCount: 11,
              ),
              StoryBlock(
                name: 'Sarowar Omi',
                profilePicPath: 'assets/08.jpg',
                storyPicPath: 'assets/Story08.jpg',
              ),
              StoryBlock(
                name: 'Mehedi Hasan Nayeen',
                profilePicPath: 'assets/10.jpg',
                storyPicPath: 'assets/Story10.jpg',
                storyCount: 7,
              ),
              StoryBlock(
                name: 'Fahim Azom Rohan',
                profilePicPath: 'assets/09.jpg',
                storyPicPath: 'assets/Story09.jpg',
                storyCount: 5,
              ),
            ],
          ),
        ));
  }
}

class StoryBlock extends StatelessWidget {
  final String storyPicPath;
  final String profilePicPath;
  final String name;
  final int storyCount;
  final bool isDefault;
  final bool isActive;

  StoryBlock(
      {this.name, this.storyPicPath, this.profilePicPath, this.storyCount = 1, this.isActive = false, this.isDefault = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Container(
        height: 250,
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(storyPicPath))),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: isDefault == false ? [
                  AvatarBubble(picPath: profilePicPath, radius: 18, hasStory: true, isActive: isActive,),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.black.withAlpha(70),
                        child: Text(
                          storyCount.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  )
                ]
                : [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 18,
                    child: Icon(Icons.add, color: Colors.black,),
                  ),
                ]
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
