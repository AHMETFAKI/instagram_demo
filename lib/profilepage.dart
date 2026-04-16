import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_demo/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Consumer(
            builder: (BuildContext context , WidgetRef ref, Widget? child){
              var username = ref.watch(ad);
              return Text(username.isEmpty ? "Profil Sayfası":username);
            },
        ),
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage("https://images.pexels.com/photos/36423205/pexels-photo-36423205.jpeg"),
              ),
              SizedBox(
                child: Text("posts:2"),
              ),
              SizedBox(
                child: Text("followers:163"),
              ),
              SizedBox(
                child: Text("following:268"),
              ),
            ]
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 25,
                child: Text("data"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child:ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
              ),
              Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      "Share Profile",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
              ),
              ElevatedButton.icon(
                  onPressed: (){},
                  label: Icon(Icons.add_a_photo_outlined),
              ),
            ],
          ),
          Expanded(
              child: DefaultTabController(
                  length: 3,
                  child: Column(
                      children: [
                        // 2. ADIM: TabBar (Tıklanacak Butonlar/İkonlar)
                        TabBar(
                          indicatorColor: Colors.black, // Seçili sekmenin altındaki çizginin rengi
                          labelColor: Colors.black, // Seçili ikonun rengi
                          unselectedLabelColor: Colors.grey, // Seçili olmayan ikonların rengi
                          tabs: [
                            Tab(icon: Icon(Icons.grid_on)),        // 1. Sekme: Gönderiler (Izgara ikonu)
                            Tab(icon: Icon(Icons.repeat)),         // 2. Sekme: Repostlar
                            Tab(icon: Icon(Icons.person_pin)),     // 3. Sekme: Etiketlenenler
                          ],
                        ),
                        Expanded(
                            child: TabBarView(
                                children: [
                                  // 1. SEKMEYE TIKLANINCA AÇILACAK EKRAN
                                  Container(
                                    color: Colors.blue.shade100,
                                    child: const Center(child: Text("Buraya Gönderiler (GridView) Gelecek")),
                                  ),
                                  // 2. SEKMEYE TIKLANINCA AÇILACAK EKRAN
                                  Container(
                                    color: Colors.green.shade100,
                                    child: const Center(child: Text("Buraya Repostlar Gelecek")),
                                  ),

                                  // 3. SEKMEYE TIKLANINCA AÇILACAK EKRAN
                                  Container(
                                    color: Colors.orange.shade100,
                                    child: const Center(child: Text("Buraya Etiketlenen Fotoğraflar Gelecek")),
                                  ),
                                ]
                            )
                        )
                      ]
                  )
              ),
          )
        ],
      ),
    );
  }
}
