import 'package:flutter/material.dart';


class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key, required this.videoUrls});

  final List<String> videoUrls;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Reels Sayfası"),
      ),



      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                // Dikey kaydırma
                itemCount: videoUrls.length,
                // return işlemini itemBuilder'ın süslü parantezleri { ... } içine aldık
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    color: index % 2 == 0 ? Colors.blueGrey : Colors.brown,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Video ${index +
                              1}\n\nOynatılacak URL:\n${videoUrls[index]}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  );
                },
              )
          )
        ],
      ),
    );
  }
}