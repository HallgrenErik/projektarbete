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
                      "Tracklist: \n1 - Hells Bells \n2 - Shoot to Thrill \n3 - What Do You Do With The Money \n4 - Givin the Dog a Bone\n5 - Let Me Put My Love Into You\n6 - Back In Black \n7 - You Shook Me All Night Long \n8 - Have a Drink on Me \n9 - Shake a Leg \n10 - Rock and Roll Ain't Noise Pollution",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Container(height: 10),
              Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: review(
                      'Älskar AC/DC!! Shoot to Thrill är min favorit - 4/5')),
              Container(height: 10),
              Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: review(' Föredrar pop, men ändå ok album- 3/5'),
                  margin: EdgeInsets.only(bottom: 10)),
              Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'ALL REVIEWS',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                  )),
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
