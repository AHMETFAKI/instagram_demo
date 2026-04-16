import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_demo/postwidget/postaction.dart';
import 'package:instagram_demo/postwidget/postcard.dart';
import 'package:instagram_demo/postwidget/postheader.dart';
import 'package:instagram_demo/postwidget/postimage.dart';
import 'package:instagram_demo/provider.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});
  final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Ana Sayfa"),
    ),

      body: Column(
        children: [
          Expanded(
              child: ListView(
                children: [
                  PostCard(),
                  PostCard(),
                  PostCard(),
                  PostCard(),
                  PostCard(),
                ],
              )
          )
        ]
      )
    );
  }
}