import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_demo/messagewidget/messagecard.dart';
import 'chatpage.dart';

class MessageHome extends StatefulWidget {
  const MessageHome({super.key});

  @override
  State<MessageHome> createState() => _MessageHomeState();
}

class _MessageHomeState extends State<MessageHome> {


  Color _butonRengi = Colors.blue;

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

                  MessageCard(),

                  SizedBox(
                    height: 20,
                  ),

                  MessageCard(),

                  SizedBox(
                    height: 20,
                  ),

                  MessageCard(),

                  SizedBox(
                    height: 20,
                  ),

                  MessageCard(),
                  SizedBox(
                    height: 20,
                  ),




                  //BURASI SADECE SETSTATE İÇİN DENEME ÖĞRENME YERİ
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _butonRengi,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    onPressed: (){
                      setState(() {
                        if(_butonRengi == Colors.blue){
                          _butonRengi = Colors.red;
                        }
                        else{
                          _butonRengi = Colors.blue;
                        }
                      });
                    },
                    child: Text(
                      "bana tıkla"
                    ),
                  ),
                ],
              )
          )
        ]
      ),
    );
  }
}
