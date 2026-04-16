import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      alignment: Alignment.center,
      child: Image.network("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg",
          fit: BoxFit.cover,
          alignment: AlignmentGeometry.center
      )
    );
  }
}
