import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'album_lista.dart';
import 'package:myapp/mina_reviews.dart';

import 'artist_view.dart';

class AlbumView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ALBUM"), actions: const [
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
              Container(
                width: 250,
                height: 250,
                color: Colors.black,
              ),
              Container(height: 10),
              const Text("Back in Black",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              Container(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => artistView()));
                },
                child: Text("AC/DC"),
              ),
              Container(height: 8),
              const Text(
                "3/5",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              const ListTile(title: Text("1 - Denna låt")),
              review('Detta är en review - 4/5')
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MinaReviews()),
              );
            }));
  }
}
