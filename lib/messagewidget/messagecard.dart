import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common_widgets/profile_photo.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        context.push("/chatpage");
      },
      leading: ProfilePhoto(),
      title: Text("data",style: TextStyle(fontSize: 25),),
    );
  }
}
