import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String name;

  ChatPage({super.key, required this.name});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(name.isEmpty ? "Kullanıcı" : name),
      ),
    );
  }
}
