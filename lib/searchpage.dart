import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.grey,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
            ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Arama",
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none, // TextField'ın kendi alt çizgisini siliyoruz
              contentPadding: EdgeInsets.symmetric(vertical: 10),
          ),
          ),

        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.mic, color: Colors.black),
            onPressed: () {
              // Sesle arama butonu eylemi
            },
          ),
        ],
      ),



      body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Yan yana 3 SÜTUN olacak
              crossAxisSpacing: 5, // Sütunlar (yan yana) arası 5 piksel boşluk
              mainAxisSpacing: 5,  // Satırlar (alt alta) arası 5 piksel boşluk
              childAspectRatio: 0.5, // Kutular tam kare (1:1) olsun
            ),
            itemCount: 50,
            itemBuilder: (context, index){
              return Container(
                color: Colors.blueGrey.shade200,
                alignment: Alignment.center,
                child: Text(
                  "Foto ${index + 1}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            }
        ),
    );
  }
}
