import 'package:flutter/material.dart';


class ProfileStack extends StatelessWidget {
  const ProfileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.person,
            size: 60,
            color: Colors.blueAccent,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black38,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.green,
                width: 4,
              )
            ),
            child: IconButton(
                onPressed: (){
                  print("Kameraya tıklandı");
                },
                icon: Icon(Icons.camera_alt), color: Colors.purpleAccent, iconSize: 20,),
          ),
        ),
      ],
    );
  }
}


class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({super.key});

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundColor: Colors.grey,
      backgroundImage: hasError
          ? null
          :NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
      onBackgroundImageError: (_,_){
        setState((){
          hasError = true;
        });
      },
      child: hasError
        ?Icon(
        Icons.person,
        size: 60,
        color: Colors.blueAccent,
      )
      :null,
      );
  }
}
