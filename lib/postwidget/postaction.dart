import 'package:flutter/material.dart';

class PostAction extends StatefulWidget {
  const PostAction({super.key});

  @override
  State<PostAction> createState() => _PostActionState();
}

class _PostActionState extends State<PostAction> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: (){
            setState(() {
              isliked = !isliked;
            });
          },
          icon: Icon(
              isliked ? Icons.favorite : Icons.favorite_border,
              color: isliked ? Colors.red : Colors.brown,
          ),
        ),
        IconButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context){
                  return SafeArea(
                    child: Row(
                      children: [
                        Text("burada yorumlar olacak")
                      ]
                    )
                  );
                }
            );
          },
          icon: Icon(Icons.chat_bubble, color: Colors.black),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.send, color: Colors.black),
        ),
        Expanded(
          child: SizedBox.shrink(),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.bookmark_border, color: Colors.black),
        ),
      ]
    );
  }
}
