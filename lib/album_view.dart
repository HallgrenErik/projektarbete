import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './skriv_review.dart';
<<<<<<< Updated upstream
import './album_lista.dart';
=======
import 'album_lista.dart';
>>>>>>> Stashed changes

import './artist_view.dart';

class AlbumView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "ALBUM",
            ),
            centerTitle: true,
            actions: const [
              IconButton(
                  icon: Icon(Icons.menu_outlined),
                  tooltip: 'menu',
                  onPressed: null),
            ]),
        body: Center(
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
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              const Text(
                "3/5",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              const ListTile(title: Text("1 - Denna låt")),
              review('Detta är en review - 4/5')
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SkrivReview()),
              );
            }));
  }
}
