import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'skriv_review.dart';
import 'album_lista.dart';

import 'artist_view.dart';

class AlbumView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.green,
          title: const Text(
            "ALBUM",
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30,
              ),
              Image.network(
                'https://www.theaudiodb.com/images/media/album/thumb/rpvuyt1538865109.jpg',
                height: 300,
              ),
              Container(height: 10),
              const Text("Back in Black",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => artistView()));
                },
                child: Text("AC/DC"),
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
              ),
              const Text(
                "Betyg: 3/5",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
              const ListTile(
                  title: Text(
                      "Tracklist: \n1 - Hells Bells \n2 - Shoot to Thrill \n3 - What Do You Do With The Money \n4 - Back in Black",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Container(height: 10),
              Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(border: Border.all()),
                  child: review('Älskar AC/DC!!- 4/5')),
              Container(height: 10),
              Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(border: Border.all()),
                  child: review(' Föredrar pop, men ändå ok album- 3/5'),
                  margin: EdgeInsets.only(bottom: 10))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add, color: Colors.green),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SkrivReview()),
              );
            }));
  }
}
