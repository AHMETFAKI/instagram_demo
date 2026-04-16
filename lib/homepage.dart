import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_demo/provider.dart';
import 'common_widgets/profile_photo.dart';
import 'reelspage.dart';
import 'messagepage.dart';
import 'searchpage.dart';
import 'profilepage.dart';
import 'mainpage.dart';




class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});


  @override
  Widget build (BuildContext context, WidgetRef ref){
    var currentIndex = ref.watch(bottomNavProvider);

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
      const ProfilePage(),
    ];

    return Scaffold(
      body: _pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,

        onTap: (int index) {
          /*setState(() {
              currentIndex = index;
            })*/
          ref.read(bottomNavProvider.notifier).state = index;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.video_chat_sharp), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Mesajlar"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Ara"),
          BottomNavigationBarItem(icon: ProfilePhoto()),
        ],
      ),
    );
  }
}
