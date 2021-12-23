import 'package:flutter/material.dart';
import 'package:messenger_ui/pages/home.dart';
import 'package:messenger_ui/pages/people.dart';
import 'package:messenger_ui/pages/stories.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [Home(), People(), Stories()];
  final List<String> titles = ['Chats', 'People', 'Stories'];
  final List<Widget> tailingButtons = [
    AppBarButton(icon: Icons.add_comment_outlined, onClick: () {},),
    AppBarButton(icon: Icons.contacts_rounded, onClick: () {},),
    Text('')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: TextButton(
            onPressed: () {},
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/02.jpg'),
              radius: 30,
            ),
          ),
        ),
        leadingWidth: 60,
        actions: [tailingButtons[currentIndex]],
        title: Text(
          titles[currentIndex],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger_rounded,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_rounded,
            ),
            label: "People",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo_library_rounded,
            ),
            label: "Stories",
          ),
        ],
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {

  final icon;
  final Function onClick;

  AppBarButton({this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
      child: IconButton(
        onPressed: onClick,
        icon: Icon(icon),
        color: Colors.blue,
      ),
    );
  }
}
