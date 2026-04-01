import 'package:flutter/material.dart';
import 'chatpage.dart';

class MessageHome extends StatefulWidget {
  const MessageHome({super.key});

  @override
  State<MessageHome> createState() => _MessageHomeState();
}

class _MessageHomeState extends State<MessageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Message Home"),
      ),


      body: Column(
        children:[
          Expanded(
              child: ListView(
                children: [

                  ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage(name: "ahmet"))
                      );
                    },
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                    ),
                    title: Text("data",style: TextStyle(fontSize: 25),),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage(name: "ahmet"))
                      );
                    },
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                    ),
                    title: Text("data",style: TextStyle(fontSize: 25),),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage(name: "ahmet"))
                      );
                    },
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                    ),
                    title: Text("data",style: TextStyle(fontSize: 25),),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage(name: "ahmet"))
                      );
                    },
                    leading: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                    ),
                    title: Text("data",style: TextStyle(fontSize: 25),),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatPage(name: "ahmet"))
                        );
                      },
                      child: Container(
                          height: 90,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 16,
                                backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("data",style: TextStyle(fontSize: 25),)
                            ],
                          )
                      )
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatPage(name: "ahmet"))
                        );
                      },
                      child: Container(
                          height: 90,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 16,
                                backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("data",style: TextStyle(fontSize: 25),)
                            ],
                          )
                      )
                  ),
                ],
              )
          )
        ]
      ),
    );
  }
}
