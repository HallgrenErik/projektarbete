import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './album_lista.dart';
import './mina_reviews.dart';
//import './api.dart';

class ArtistView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("ARTIST"),
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
              'https://www.theaudiodb.com/images/media/artist/logo/uutrxt1520332371.png',
            ),
            Container(height: 10),
            const Text("AC/DC",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            Container(height: 8),
            Container(
              child: info(),
              margin: const EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }

  Widget info() {
    return Column(
      children: const [
        Text(
            "Info om artist Info om artistInfo om  om Info om artist Info om artist Info om artist",
            style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
