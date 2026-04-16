import 'package:flutter/material.dart';
import 'package:instagram_demo/postwidget/postaction.dart';
import 'package:instagram_demo/postwidget/postheader.dart';
import 'package:instagram_demo/postwidget/postimage.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              PostHeader(),
              PostImage(),
              PostAction(),
            ],
      );
  }
}
