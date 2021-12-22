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
  final screens = [
    Home(),
    People(),
    Stories()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
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
