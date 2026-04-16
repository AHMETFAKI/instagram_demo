import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_demo/provider.dart';

class ChatPage extends StatelessWidget {
  final String name;

  ChatPage({super.key, required this.name});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child){
              var username = ref.watch(ad);
              return Text(name.isEmpty ? "Kullanıcı" : username);
            },
        ),
      ),
    );
  }
}
