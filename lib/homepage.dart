import 'package:flutter/material.dart';

import 'reelspage.dart';
import 'messagepage.dart';
import 'searchpage.dart';
import 'profilepage.dart';
import 'mainpage.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex=0;

  final List<Widget> _pages = [
    const MainPage(title: "Ana Sayfa"),
    const ReelsPage(
      videoUrls: [
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      ],
    ),
    const MessageHome(),
    const SearchPage(),
    const ProfilePage(name: "adımşuşu"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,

        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.video_chat_sharp), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Mesajlar"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Ara"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
