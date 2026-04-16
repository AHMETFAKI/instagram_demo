import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../common_widgets/profile_photo.dart';
import '../provider.dart';


class PostHeader extends StatelessWidget {
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        ProfilePhoto(),

        SizedBox(
          width: 20,
        ),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child){
            var username = ref.watch(ad);
            return Expanded(
              child: Text(
                username,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                )
              ),
            );
          },
        ),
        IconButton(
            onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return SafeArea(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.person_add),
                              title: Text("Takip Et"),
                            )
                          ],
                        )
                    );
                  }
              );
            },
            icon: Icon(Icons.person_add), color: Colors.black),

        IconButton(
            onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return SafeArea(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.download),
                            title: Text("İndir"),
                          ),
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text("Paylaş"),
                          ),
                          ListTile(
                            leading: Icon(Icons.delete),
                            title: Text("Sil"),
                          ),
                          ListTile(
                            leading: Icon(Icons.close),
                            title: Text("Kapat"),
                          ),
                        ],
                      )
                    );
                  }
              );
            },
            icon: Icon(Icons.more_vert, color: Colors.black)
        ),
      ]
    );
  }
}
