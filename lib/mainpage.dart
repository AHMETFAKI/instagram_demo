import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import 'loginpage.dart';


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
                  Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                        ),
                        SizedBox(width: 20),
                        Consumer(
                          builder: (BuildContext context, WidgetRef ref, Widget? child) {
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
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ListTile(
                                            leading: Icon(Icons.person_add),
                                            title: Text("Takip Et"),
                                          )
                                        ]
                                    )
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.person_add),
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: (){
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context){
                                return SafeArea(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
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
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.more_vert),
                          color: Colors.black,
                          iconSize: 20,
                        )
                      ]
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Image.network(
                        "https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg",
                        fit: BoxFit.cover,
                        alignment: AlignmentGeometry.center
                    ),
                  ),
                  Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.deepOrange,
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.chat_bubble_outline),
                            color: Colors.black
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.send),
                            color: Colors.black
                        ),
                        Expanded(
                          child: SizedBox.shrink(),
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.bookmark_border),
                            color: Colors.black
                        ),
                      ]
                  ),
                  Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                        ),
                        SizedBox(width: 20),
                        Consumer(
                          builder: (BuildContext context, WidgetRef ref, Widget? child) {
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
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ListTile(
                                            leading: Icon(Icons.person_add),
                                            title: Text("Takip Et"),
                                          )
                                        ]
                                    )
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.person_add),
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: (){
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context){
                                return SafeArea(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
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
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.more_vert),
                          color: Colors.black,
                          iconSize: 20,
                        )
                      ]
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Image.network(
                        "https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg",
                        fit: BoxFit.cover,
                        alignment: AlignmentGeometry.center
                    ),
                  ),
                  Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.deepOrange,
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.chat_bubble_outline),
                            color: Colors.black
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.send),
                            color: Colors.black
                        ),
                        Expanded(
                          child: SizedBox.shrink(),
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.bookmark_border),
                            color: Colors.black
                        ),
                      ]
                  ),
                  Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                        ),
                        SizedBox(width: 20),
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
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ListTile(
                                            leading: Icon(Icons.person_add),
                                            title: Text("Takip Et"),
                                          )
                                        ]
                                    )
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.person_add),
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: (){
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context){
                                return SafeArea(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
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
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.more_vert),
                          color: Colors.black,
                          iconSize: 20,
                        )
                      ]
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Image.network(
                        "https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg",
                        fit: BoxFit.cover,
                        alignment: AlignmentGeometry.center
                    ),
                  ),
                  Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border),
                          color: Colors.deepOrange,
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.chat_bubble_outline),
                            color: Colors.black
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.send),
                            color: Colors.black
                        ),
                        Expanded(
                          child: SizedBox.shrink(),
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.bookmark_border),
                            color: Colors.black
                        ),
                      ]
                  ),
                ],
              )
          )
        ]
      )
    );
  }
}